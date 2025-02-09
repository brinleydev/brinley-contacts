Config = {}
 
Config.Framework = 'qbcore'
Config.FrameworkFolder = 'qb-core' -- qb-core or es_extended
Config.Inventory = "qb-inventory" -- "qb-inventory" or "OX"
Config.InventoryImagesLocation = 'https://cfx-nui-qb-inventory/html/images/' -- https://cfx-nui-qb-inventory/html/images/ | https://cfx-nui-ox_inventory/web/images/
Config.npcs = {
    {
        name = "Fer' Sherman",
        private = false, 
        text = "This lake's a beauty, isn't she? I spent most of my time out here fishing, it's a great way to relax and pass the time. I've got some spare equipment for sale if you want to give it a try.", 
        domain = "Fishing", 
        ped = "cs_old_man2", 
        scenario = "", 
        police = true, 
        coords = vector4(1303.9150, 4229.0024, 32.9087, 40.4492), 
        options = { 
            {
                label = "Buy Equipment", 
                requiredrep = 0, --required rep to even open the shop
                type = "shop", 
                items = {
                    {
                        name = "fishingrod",
                        description = "Tools",
                        requiredrep = 0,
                        price = 150
                    },
                    {
                        name = "fishbait",
                        description = "Tools",
                        requiredrep = 0,
                        price = 20
                    },
                
                },
                event = "",
                args = {}
            },
            {
                label = "Sell Fish",
                requiredrep = 0,
                type = "server",
                event = "brinley-fishing:sellFishes",
                args = {} 
            },
            {
                label = "Rent a boat",
                requiredrep = 0,
                type = "client",
                event = "mp-fishing:rentboat",
                args = {} 
            },
            {
                label = "View Leaderboard",
                requiredrep = 0,
                type = "client",
                event = "brinley-fishing:showLeaderboard",
                args = {} 
            },
            {
                label = "Leave conversation",
                requiredrep = 0,
                type = "none",
                event = "",
                args = {} 
            },
            
        }
    },
}
