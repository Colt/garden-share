users = User.create([
          {name: "Deborah Field", email: "debbie@gardenshare.org", description: "I can vision a organic garden where some of the produce is sold or given away to the needy. All soil preparation, seeds and plants, and maintenance is the responsibility of the users. Details to be discussed and written agreement created."},
          {name: "Claudia Baskind", email: "claudie@gardenshare.org", description: "Have front and back garden space to share--details negotiable but would like to have a range of hours each week that we cooperatively garden together for inspiration and efficiency. after getting established/knowing each other, folks could garden at other times too"},
          {name: "Jamie Flanagan", email: "jamie@gardenshare.org", description: "We have a small yard, and I'll be gardening in it, but I'd love to share the yield and get to know my neighbors."}
        ])

gardens = Garden.create([
          {location: "172 San Carlos Street, San Francisco", description: "I have a space between two buildings. It is currently grass. It is probably 20 x 50 feet. There is water available. The eastern half of my front yard is available for someone to use as a garden, about 600 sq.ft. There is no fence, so it would be available all the time. I don't yet have a hose or any tools, but you can use them when I get them."},
          {location: "405 Florida Street, San Francisco", description: "Huge side yard with full sun. Half is done in raised beds, would like to do the other half, which has already been tilled."}
        ])