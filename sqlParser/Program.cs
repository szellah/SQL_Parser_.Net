using System;
using System.Collections.Generic;
using System.Linq;
using MySql.Data.MySqlClient;

namespace sqlParser
{
    //class Article is a general container for all Articles held on a station, in our case that's mouse, display, keyboard and central unit. it can return its values with a help of ToString()
    class Article
    {
        private string category;
        private string name;
        private string description;
        private string additionDate;
        private int productionYear;
        private int state;

        public Article(string category, string name, string description, string additionDate, int productionYear, int state)
        {
            this.category = category;
            this.name = name;
            this.description = description;
            this.additionDate = additionDate;
            this.productionYear = productionYear;
            this.state = state;
        }

        public override string ToString()
        {
            return $"'{category}', '{name}', '{description}', '{additionDate}', '{productionYear}', '{state}'";
        }
    }

    //class Room holds many Articles, and when called as a string returns value tables for all Articles within it, complteted with the id you specify while creating it.
    class Room
    {
        private List<Article> articles = new List<Article>();
        private int locationId;

        public int LocationId
        {
            get { return locationId; }
        }

        public int Capacity
        {
            get { return articles.Count; }
        }

        public Room(int locationId)
        {
            this.locationId = locationId;
        }

        public void addArticle(Article i)
        {
            articles.Add(i);
        }

        public override string ToString()
        {
            string result = "";
            foreach (Article a in articles)
                result += $" ( NULL, '{locationId}', {a} ),";
            if(result.Length>0)
                result = result.Substring(0, result.Length - 1);
            return result;
        }
    }

    //class Database holds all the rooms and can contact sql Databse to parse in all Articles.
    class Database
    {
        private List<Room> rooms = new List<Room>();

        private string mySqlConnectionString;

        public int Capacity
        {
            get { return rooms.Count; }
        }
        public Room leastFilledRoom
        {
            get
            {
                int minCapacity = int.MaxValue;
                foreach (Room r in rooms)
                    if (r.Capacity < minCapacity)
                        return r;
                return rooms[rooms.Count-1];
            }
        }

        public int[] RoomsLocationIds
        {
            get
            {
                int[] tab = new int[Capacity];
                for (int i = 0; i < Capacity; i++)
                    tab[i] = rooms[i].LocationId;
                return tab;
            }
        }

        public int AmountOfArticles
        {
            get
            {
                int result = 0;
                foreach (Room r in rooms)
                    result += r.Capacity;
                return result;
            }

        }

        public Database(int[] roomLocactionIds)
        {
            foreach (int id in roomLocactionIds)
                addRoom(new Room(id));
        }

        public void defineMySQLConnectionString(string datasource, int port, string username, string password, string database)
        {
            mySqlConnectionString = $"datasource={datasource};port={port};username={username};password={password};database={database}";
        }

        public void addRoom(Room r)
        {
            rooms.Add(r);
        }

        public void addArticleToRoom(int roomId, Article a)
        {
            foreach (Room r in rooms)
                if (r.LocationId == roomId)
                {
                    r.addArticle(a);
                    return;
                }
        }

        public int roomCapacity(int roomId)
        {
            foreach (Room r in rooms)
                if (r.LocationId == roomId)
                    return r.Capacity;
            return -1;
        }

        public void emptyItself()
        {
            rooms.Clear();
        }

        public void parseToSqlServer()
        {
            if (String.IsNullOrEmpty(mySqlConnectionString))
                throw new Exception("mySqlConnectionString has not been defined yet");

            MySqlConnection conn = new MySqlConnection(mySqlConnectionString);
            MySqlCommand command = new MySqlCommand(Convert.ToString(this), conn);

            command.CommandTimeout = 6000;

            try
            {
                conn.Open();
                int numRows = command.ExecuteNonQuery();
                Console.WriteLine($"Wstawiono {numRows} artykułów");
                conn.Close();
            }
            catch (Exception e)
            {

                throw e;
            }

        }

        public override string ToString()
        {
            string result = "INSERT INTO `articles`(`ArticleId`, `LocationId`, `Category`, `Name`, `Description`, `AddtionDate`, `ProductionYear`, `State`) VALUES";
            foreach (Room r in rooms)
                result += $"{r},";
            if (result.Length > 0)
                result = result.Substring(0, result.Length - 1);
            return result;
        }
    }

    class Scatterer
    {
        Random rnd;
        public Scatterer()
        {
            rnd = new Random();
        }
        //how many of the same article, implementacja mniej obiektowa
        public void scatterArticles(Database db, Article[] articles, int amount, bool ifLinearDistribution = true)
        {
            if (articles.Length * amount % db.Capacity != 0 && ifLinearDistribution)
                throw new Exception("for a linear distribution you need amount of types of articles and articles themselve to be a factor of amount of rooms in database");

            int[] amounts = new int[articles.Length];

            int[] roomsFullfilment = new int[db.Capacity];

            int[] roomIds = db.RoomsLocationIds;

            int desiredRoomCapacity = (int)Math.Floor((double)(articles.Length * amount) / (double)db.Capacity);

            int drawedRoom;

            int articleIndex = 0;

            while (roomsFullfilment.Min() != desiredRoomCapacity)
            {
                drawedRoom = rnd.Next(db.Capacity);

                if (roomsFullfilment[drawedRoom] < desiredRoomCapacity)
                {
                    db.addArticleToRoom(roomIds[drawedRoom], articles[articleIndex]);
                    roomsFullfilment[drawedRoom]++;
                    if (++amounts[articleIndex] == amount)
                        articleIndex++;
                }
            }

        }

    }

    class Program
    {
        static void Main(string[] args)
        {

            int[] roomIds = { 8, 9, 10, 11, 13, 14, 15 };
            Database baza = new Database(roomIds);

            Article[] myszki =
                       {
                            new Article("myszka","Logitech B100", "", "2021-04-16", 2016, 1),
                            new Article("myszka","Trust Mydo Silent Click", "", "2021-04-16", 2018, 1),
                            new Article("myszka","A4Tech EVO Opto Ecco", "", "2021-04-16", 2019, 1),
                            new Article("myszka","Dell MS116", "", "2021-04-16", 2014, 1)
                        };

            Article[] klawiatury =
                       {
                            new Article("klawiatura","Natec Barracuda", "", "2021-04-16", 2015, 1),
                            new Article("klawiatura","Logitech K120", "", "2021-04-16", 2017, 1),
                            new Article("klawiatura","Dell KB216", "", "2021-04-16", 2018, 1),
                            new Article("klawiatura","A4Tech KR-85", "", "2021-04-16", 2015, 1)
                        };

            Article[] monitory =
                       {
                            new Article("monitor","Samsung F24T350", "", "2021-04-16", 2014, 1),
                            new Article("monitor","Acer Nitro VG240Ybmiix", "", "2021-04-16", 2020, 1),
                            new Article("monitor","BenQ GW2480E", "", "2021-04-16", 2017, 1),
                            new Article("monitor","Dell SE2416H", "", "2021-04-16", 2016, 1)
                        };

            Article[] jednostkiCentralne =
                       {
                            new Article("jednostka centralna","Acer Veriton VX2665G", "", "2021-04-16", 20, 1),
                            new Article("jednostka centralna","Asus ExpertCenter", "", "2021-04-16", 20, 1),
                            new Article("jednostka centralna","Lenovo IdeaCentre", "", "2021-04-16", 20, 1),
                            new Article("jednostka centralna","HP S01-AF1003nw", "", "2021-04-16", 20, 1)
                        };

            Article[] drukarki =
                       {
                            new Article("drukarka","Lexmark B2236dw", "", "2021-04-16", 2014, 1),
                        };

            Scatterer rozrzucacz = new Scatterer();

            rozrzucacz.scatterArticles(baza, klawiatury, 14);
            rozrzucacz.scatterArticles(baza, myszki, 14);
            rozrzucacz.scatterArticles(baza, monitory, 14);
            rozrzucacz.scatterArticles(baza, jednostkiCentralne, 14);
            rozrzucacz.scatterArticles(baza, drukarki, 7);
            baza.defineMySQLConnectionString("127.0.0.1", 3306, "root", "", "aidc_db");

            baza.parseToSqlServer();
            Console.WriteLine(baza.AmountOfArticles);

            baza.emptyItself();
            baza.addRoom(new Room(12));
            rozrzucacz.scatterArticles(baza, klawiatury, 3);
            rozrzucacz.scatterArticles(baza, myszki, 3);
            rozrzucacz.scatterArticles(baza, monitory, 3);
            rozrzucacz.scatterArticles(baza, jednostkiCentralne, 3);
            rozrzucacz.scatterArticles(baza, drukarki, 2);

            baza.parseToSqlServer();
            Console.WriteLine(baza.AmountOfArticles);

            Console.ReadKey();
        }
    }
}
