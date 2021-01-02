class Book {
  final int id;
  final String name;
  final String description;
  final String author;
  final double price;
  final String imgUrl;
  final int rate;
  final bool isBookmarked;

  Book(
      {this.id,
      this.description,
      this.price,
      this.rate,
      this.name,
      this.author,
      this.imgUrl,
      this.isBookmarked});
}

Book one = Book(
  isBookmarked: true,
  id: 0,
  name: 'The Girl In Red',
  description:
      "From the national bestselling author of Alice comes a postapocalyptic take on the perennial classic 'Little Red Riding Hood'...about a woman who isn't as defenseless as she seems. It's not safe for anyone  alone in the woods. There are predators that come out at night: critters and coyotes, snakes and wolves. But the woman in the red jacket has no choice.",
  price: 14.50,
  rate: 5,
  author: 'Christina Henry',
  imgUrl: 'assets/images/the-girl-in-red.jpg',
);
Book two = Book(
    isBookmarked: false,
    id: 1,
    name: 'The Zolin Conspiracy',
    description:
        "Konrad Savast is the Malykant: the most secret servant of the God of Death. His job? To track down the foulest of murderers and bring them to The Malykt's Justice. No mercy. No quarter.",
    price: 12.59,
    rate: 5,
    author: 'Charlotte E. English',
    imgUrl: 'assets/images/the-zolin-conspiracy.jpg');
Book three = Book(
    isBookmarked: false,
    id: 2,
    name: 'Rework',
    description:
        "Most business books give you the same old advice: Write a business plan, study the competition, seek investors, yadda yadda. If you're looking for a book like that, put this one back on the shelf.",
    price: 19.91,
    rate: 5,
    author: ' Jason Fried',
    imgUrl: 'assets/images/rework.jpg');
Book four = Book(
    isBookmarked: false,
    id: 3,
    name: 'The DaVinci Code',
    description:
        "Just where does fact end and fiction begin? The brilliant mix of fact and fiction in Dan Brown's Conspiracy story 'The Da Vinci Code' raises serious questions regarding the origins and claims of Christianity. Many come away from the book shaken in their beliefs, wondering what is true? Questions like 'Was Mary Magdalene really Jesus' wife and the mother of his child?' And more. McDowell skillfully separates facts from fallacy.",
    price: 15.99,
    rate: 5,
    author: 'Josh McDowell',
    imgUrl: 'assets/images/the-daVinci-code.jpg');
Book five = Book(
    isBookmarked: true,
    id: 4,
    name: 'Deadly Cross',
    description:
        "The murder of a glamorous DC socialite becomes Alex Cross’s deadliest case since Along Came a Spider. Kay Willingham led a life as glamorous as it was public-she was a gorgeous Georgetown socialite, philanthropist, and the ex-wife of the vice president. ",
    price: 12.98,
    rate: 3,
    author: 'James Patterson',
    imgUrl: 'assets/images/deadly-cross.jpg');
Book six = Book(
    isBookmarked: false,
    id: 5,
    name: 'Fifty Shades of Grey',
    description:
        "MORE THAN 150 MILLION COPIES SOLD WORLDWIDE - Now in hardcover, with a silk ribbon marker and printed endpapers, the first volume of the New York Times #1 bestselling series.",
    price: 13.99,
    rate: 4,
    author: 'E. L. James',
    imgUrl: 'assets/images/fifty-shades-of-grey.jpg');
Book seven = Book(
    isBookmarked: true,
    id: 6,
    name: 'No Place Like Here',
    description:
        "Since Sandy Shortt's childhood classmate disappeared twenty years ago, Sandy has been obsessed with missing things. Finding what is lost becomes her single-minded goal--from the lone sock that vanishes in the washing machine to the car keys she misplaced.",
    price: 12.99,
    rate: 5,
    author: 'Cecelia Ahern',
    imgUrl: 'assets/images/no-place-like-here.jpg');

List<Book> forYou = [two, three, six, seven];
List<Book> mostPopular = [one, four, five, six, seven];
