visit a website on my computer, tablet or phone to read about the art and artifacts in the Rainier Club (“Digital Docent”)
ROOMS FLOW

click on a collection name from the item show page if the item is part of a collection (collection show)

view available images and multi-media from any page where they are available (item show, artist show, room show, or collection show)


ARTIST FLOW
click “explore artists” link from homepage to browse artists (artists index)
click on an artist to see information about the artist, link to items by that artist, floor and rooms where they are located and collections in which they are included (artist show)
ITEM (ART) FLOW
click “explore art” link from homepage to browse art (items index)
click on an item to see information about that item, link to artist, floor and room where it is located (with link to room show) and collections it is part of
SEARCH FLOW
click “search” link from homepage and select either search by item_id or text search
text search results in a list of possible matches from artist, item, collection, etc.
id search leads to item show page
NEW WORKS FLOW
click “new works” from the homepage leads to a page of 10-15 item previews (sorted by newest acquired)
FEATURED WORKS FLOW
navigate to featured works page: can either be a collections index, a list of 10-15 item previews (filtered by “featured”) or a static page
CURRENT EXHIBITION FLOW
static page describing latest exhibition
USER EXPERIENCE
layout and design elements should be visually appealing and responsive, use thumbnail images where possible and complement existing Rainier Club styles

Create an enticing means for members and guests to enjoy to the Club’s historic art collection
Tell the stories: the artists, their work, their place in the Club’s 125 year history, and in the Pacific Northwest.
Wherever possible, tell the story of how the art was acquired (recognize donors)
Have admin CRUD access to the site after it is built (Create, Read, Update, Delete records) OR
incorporate admin access with existing RC site login
Have edit access to the app after it is built (ability to change the page structure)
Connect app to existing database OR
re-populate new database with data from existing using admin upload (can be completed by RC intern or staff)
Run app as a website served by Heroku (or possibly Microsoft Azure) that can be redirected to a subdomain of rainierclub.com or a standalone page linked to from RC website.


Hours:
12/23: ~8
installed SQL database
initiated rails project
add models except for image and media
user flow through artist, room, item pages
add donor recognition

TODOS:
install virtual machine and test rails integration
add devise
add some formatting (bootstrap)
add seeds
add tests?
remove join table, not needed
add default image if no image.first (for index views)
