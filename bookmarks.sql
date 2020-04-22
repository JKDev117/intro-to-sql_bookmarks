-- First, remove the table if it exists
drop table if exists bookmarks;

-- Create the table anew
create table bookmarks (
    id INTEGER primary key generated by default as identity,
    title TEXT NOT NULL,
    url TEXT NOT NULL,
    description TEXT,
    rating INTEGER NOT NULL DEFAULT 4 CHECK(rating > 0 AND rating < 6)
);

-- insert some test data
-- using a multi-row insert statement here
insert into bookmarks (title, url, description, rating)
values
    ('Open Library', 'https://openlibrary.org/', '', '5'),
    ('Print Friendly', 'http://www.printfriendly.com/', '', '5'),
    ('Comic Shuffle', 'http://www.comicshuffle.com/', '', '5'),
    ('Unplug The TV', 'http://unplugthetv.com/', '', '5'),
    ('A Soft Murmur', 'http://asoftmurmur.com/', '', '4'),
    ('Wolfram Alpha', 'http://www.wolframalpha.com/', '', '4'),
    ('Chordify', 'https://chordify.net/', '', '4'),
    ('Manuals Lib', 'http://www.manualslib.com/', '', '3'),
    ('Sporcle', 'http://www.sporcle.com/', '', '3'),
    ('Gnoosic', 'http://www.gnoosic.com/', 'Gnoosic will help you discover new music. Put in three bands, and it will tell you what else to listen to.', '1');    