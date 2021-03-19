-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2021 at 05:38 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add story', 7, 'add_story'),
(26, 'Can change story', 7, 'change_story'),
(27, 'Can delete story', 7, 'delete_story'),
(28, 'Can view story', 7, 'view_story'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add tag', 9, 'add_tag'),
(34, 'Can change tag', 9, 'change_tag'),
(35, 'Can delete tag', 9, 'delete_tag'),
(36, 'Can view tag', 9, 'view_tag'),
(37, 'Can add tagged item', 10, 'add_taggeditem'),
(38, 'Can change tagged item', 10, 'change_taggeditem'),
(39, 'Can delete tagged item', 10, 'delete_taggeditem'),
(40, 'Can view tagged item', 10, 'view_taggeditem');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$hokZ5M2pZJxr$skyqrlJt7ZhS9fDl6Li8abIoNI7I1rCiZdUhGMZ+0iA=', '2021-02-22 03:46:19.343294', 1, 'GauravTyagi', '', '', 'gt@gmail.com', 1, 1, '2021-02-22 03:41:05.778806');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE IF NOT EXISTS `book_category` (
`id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `name`, `slug`) VALUES
(1, 'Action Adventure', 'Action-Adventure'),
(2, 'Fantasy', 'Fantasy'),
(3, 'Romance', 'Romance'),
(4, 'oscar wilde', 'oscar-wilde');

-- --------------------------------------------------------

--
-- Table structure for table `book_story`
--

CREATE TABLE IF NOT EXISTS `book_story` (
`id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `body` longtext NOT NULL,
  `des` longtext NOT NULL,
  `publish` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_story`
--

INSERT INTO `book_story` (`id`, `title`, `body`, `des`, `publish`, `category_id`) VALUES
(1, 'Unexpected end to a short story', '<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color:#c0392b"><strong>Unexpected end to a short story</strong></span></h2>\r\n\r\n<p>Knowing very well that Chandni was affected with heart problems, great care was taken to break the news of her husband, Slok&rsquo;s death as softly as possible by her sister Naina. Naina uttered the news in broken sentences, camouflaging the hints in a half concealed manner. &ldquo;Chandni, you know what, be calm and brave my dear little sis, Slok is not in our midst now,&rdquo; told Naina, hugging her sister tightly. Nitin, Chandni&rsquo;s husband&rsquo;s friend, the bearer of this tragic news was also there trying to console and provide support to Chandni. News of an accident which had happened in the wee hours of today morning near the outskirts of Pune was flashed as breaking news over the TV a couple of hours ago. Slok&rsquo;s name was seen at the top of the list of those &lsquo;killed&rsquo; in the accident. Shocked on seeing the news it was Nitin who had gone to the nearby Newspaper office to doubly confirm the news. He hurried to prevent any less considerate and less assiduous friend to be the bearer of this sad message to Chandni, for whom he had a special sisterly affection. Chandni did not receive the news as did several other women with an immobilized inability to accept its gravity. &ldquo;No, not my Slok,&rdquo; so saying Chandni broke down at once, with instantaneous and wild abandonment in Naina&rsquo;s arms. With the storm of grief having subsided gradually, Chandni slowly climbed the stairs leading to her room, and it was clear from her body language that she would be liked to be left alone and have no one follow her. &rdquo; Please leave me alone,&rdquo; she implored; and burst our suddenly, &ldquo;Why has this happened to me, Oh my God!&rdquo; She stood there in her room, staring at the wide open window and sank into a wide and comfortable roomy single sofa. Chandni appeared fully drained and held down by immense mental and physical fatigue that captivated her body that seemed to engulf her soul as well. She was motionless except when a sob escaped her throat and shook her violently. She looked like a child who cries itself uncontrollably when put the child to sleep and continues this sobbing in its dreams too. All of a sudden Chandni arose as though awakened from a bad dream. She could feel the delicious breath of rain that was pervading the atmosphere. In the Patel Street just opposite her house she could hear a peddler announcing his wares for sale at the top of his shrill voice. The notes of a popular Hindi song of the 1960s which someone was singing reached her ears somewhat faintly. &ldquo;Oh, I can now hear my favourite Lataji&rsquo;s song wading through the air&rdquo; thought she. Hearing countless birds chirping in the nearby patch of shady trees, she felt a bit calm and composed. Through the large window could be seen patches of blue sky scattered here and there wafting through the passing clouds. Chandni, the young fair lady was one who wore a calm face, the lines of which bespoke suppression and some toughness as well. The face had a different expression now as there was this dull stare that shown in her eyes, whose gaze was concentrated far away towards one of the patches in the clear blue sky. It was not a glance of reflection, but rather indicated a suspension of astute and brilliant thought. Her intuition could sense something coming towards her and she waited for it with abated breath. What could it be? She just could not understand. She did not know; it was too indistinctive and evasive to define. But she could feel it creeping through the sky, coming towards her through the various sounds; fragrances and colours which engulfed the air. Her chest rose and fell vociferously. She started becoming conscious of the unknown that was advancing towards her to take control of her and she strived hard to resist this force with her resolve, which proved to be as vulnerable as her two white lean hands. Finally when she abandoned herself, a small whisper word escaped her somewhat parted lips. She repeatedly pronounced the word in a soft tone: &ldquo;I am free, free, free!&rdquo; The empty stare and the terrified look that had followed it disappeared from her eyes and they appeared to be bright and zestful now. She could hear her pulse beating fast and the blood racing through her body which warmed and eased her entire body. She did not once question herself as to whether or not it was this beastly joy which held her! A plain and rhapsodic perception made her dismiss this suggestion as insignificant. Yes, she was totally aware that she would weep and break down once she sees the masculine hands of Slok folded in death; the face that had never glanced, save with loving and tender eyes, but which many a time cast a gray and dead stare at her . But beyond all this disgruntled moment, she could visualize a long procession of future years that would be solely hers. With open arms she was all set to welcome this freedom which she felt was missing during her years wedded to Slok. Yes she would just live for herself in the years to come. It was a strange feeling of apprehension and joy and she felt butterflies in her stomach. This intention of hers, whether kind or cruel made the act look no less a crime as she looked at it in that brief moment of luminescence. There would be no powerful imposing authority above her in that blind obstinacy with which women and men believe they have a private legal entitlement to impose upon their spouses. But, yet it could not be said that she did not love him- yes at times! It was a love and hate relationship between them. It did not matter much now! What could this feeling of love, the baffled mystery be, when compared to this custodian of self-declaration which she suddenly realized as the strongest urge of hers at the present moment! &ldquo;I am born free again! My body and soul are free!&rdquo; she kept repeating in a hushed tone. On the other side of the room&rsquo;s closed door, Naina was banging the door and kneeling, with her lips pressed against the keyhole, begging Chandni to open the door and let her in. &rdquo; Chandni, my dear sister, please open the door , I beg of you little sis of mine, we want to see you. Please listen to me, we are here for you. You are our little princess. Don&rsquo;t torture yourself. We are worried. What is it that you are doing Chandni Gudiya? Please, please, we want to see you. For heaven&rsquo;s sake open the door and let us in.&rdquo; &ldquo;Go away, Naina Didi. Don&rsquo;t you worry about me. I am not going to harm myself. Be rest assured&rdquo;. Her thoughts were running riot. &ldquo;How will Naina ever understand me? Nobody can guess my feelings now. Here I am drinking in the elixir of life and enjoying my new found freedom through the wide open window gazing at the wonderful azure sky.&rdquo; Soon her mind started racing uncontrollably over those days that were yet to come. Rainy days, summer days and winter days and all other types of days would be hers and hers alone. She uttered a quick prayer asking God to grant her a very long life. It was just yesterday that she thought with a shiver about the long life which she might have to live with Slok. Chandni stood up at length and opened the door hearing her sister&rsquo;s entreaties which became louder and louder. Her eyes displayed a maniacal triumph, and she carried herself involuntarily like Nike, the goddess of Victory in Greek mythology. She wrapped her hands around her sister&rsquo;s waist and fully leaning against Naina, both the sisters gradually descended the staircase. Nitin stood at the bottom of the staircase, totally disturbed and devastated by the recent happenings. Suddenly everyone turned their gaze towards the door. Someone was trying to open the main front door with a latch key. &ldquo;Who could it be? Perhaps Slok&rsquo;s parents or some close friend.&rdquo; thought they. Behold what a sight! It was Slok who entered the house, in a crumpled T-shirt and a somewhat soiled pant. Carrying his small suitcase and an umbrella, he looked travel-stained and had obviously missed the bus by a few minutes as the auto-rickshaw in which he was travelling to catch his bus was held in heavy traffic and could not make it on time to board the bus. He looked dazed and totally unaware of the tragedy which had stuck the bus which he was supposed to have boarded. He was far from the scene of the accident, and totally clueless about the tragic happening. He stood bewildered and amazed on hearing Naina&rsquo;s ear piercing cry; and at Nitin&rsquo;s shocked look, Chandni&rsquo;s eyes met with that of Slok&rsquo;s and suddenly she collapsed and was rushed to the nearby hospital. On admission she was pronounced DEAD due to cardiac arrest. Why? Is it due to the crashing of her future dreams or the beginning of her bad times once again or is it something else-sudden joy that proved to be a killer! It is left to the reader&rsquo;s imagination!</p>', 'Knowing very well that Chandni was affected with heart problems, great care was taken to break the news of her husband, Slok’s death as softly as possible by her sister Naina. Naina uttered the news in broken sentences, camouflaging the hints in a half concealed manner.', '2021-02-22 04:12:48.342074', 3),
(2, 'My mother almost drowned me once', 'My pudgy fingers were wrapped around a sapphire, a blue glass jewel caressed to smoothness by a century of waves. I had spied it resting on a dimple in the sand. I wondered at the shard’s origin; perhaps a pirate’s goblet or the perfume bottle of an exotic, sunken princess.\r\n\r\nThe slap rang in my ear before I felt the heat spread. I raised my hand to my face, too late to shield my stinging cheek. She snatched my treasure from the sand where it had dropped and hurled it in a high arc back into the waves.\r\n\r\nMy mother grasped my shoulders. “We never take gifts from the Ocean,” she hissed. \r\n\r\nI wriggled from her hold and ran towards the Ocean that had swallowed my prize. My mother’s arm looped around my waist and lifted me before I reached the line where the water meets the sand. I struggled against her iron grip, wailing as she hauled me across the beach to our cabin. She dragged me to the claw footed bathtub abandoned in the garden, full of rain and fallen leaves. My reflection kissed me as she pushed my head under.\r\n\r\nI thrashed and choked down a mouthful of dirty water. My small fists beat the side of the tub. My lungs were scorching. Black specks multiplied in my vision. Right as the dots began to merge into a single darkness, my mother pulled me up by my hair.\r\n\r\nHer fingers bit crescent moons into my shoulders. “This is the Ocean’s gift, Annabeth. We never take gifts from the Ocean. Do you understand me?”\r\n\r\nShe shook me until my head wobbled in affirmation. We never take gifts from the Ocean.\r\n\r\nMy mother’s grip loosened. She brushed my limp hair from my face. “I’m sorry. I’m sorry.” My soaking frock dampened hers as she pulled me into an embrace. “Annabeth,” she sighed. “I’m sorry.”\r\n\r\nOur sliver of sand was littered with beautiful offerings from the Ocean. Twice a day, the waves crept closer to my mother’s home and when they bashfully retreated, there would be blush pink shells, and spires of bleached driftwood, and a carpet of sea glass beads transforming the beach into a stained glass mural. The locals whispered that my mother must be a sea witch or a mermaid to have enticed the Ocean to leave her so many presents. She ignored the gossip and the gifts. Every dawn, she would walk to the water’s edge and tip out the jar she used to collect her tears. “Someday I will replace the entirety of the Ocean,” she told me.\r\n\r\nI asked once why she stayed here on the Ocean’s edge.\r\n\r\n“For love,” was her only reply.\r\n\r\nThe ritual continued. The Ocean left a violin draped in seaweed, a marble coffin filled with pearls and snails, a golden sea turtle. When the sun awoke, my mother stepped past these marvels and poured out her jar of tears.\r\n\r\nSo with his gifts ignored, when I was eleven, the Ocean came to our door to ask for forgiveness.\r\n\r\nHis skin was nearly translucent and flashed rainbows in the glinting sun. He was dressed in a brown suit he had borrowed from a corpse. I had to crane my neck to see his gray eyes. He was so beautiful I nearly swallowed my tongue.\r\n\r\nHe extended a hand to me. It was elegant but his skin trembled as if his flesh was less than solid. His fingers gently brushed mine and I had the impression that, were I to grip them and pull, his skin would slough off and he would spill to the floor.\r\n\r\n“Hello,” he glimmered in the doorway.\r\n\r\nI was mesmerized into immobility. Droplets of water beaded on my skin where he had touched me.\r\n\r\nHe slid past me and poured himself into a kitchen chair.\r\n\r\nI was unsure of the etiquette for when the Ocean has made himself a guest in your home. I scrambled for a polite gesture.\r\n\r\n“Would you like a drink?” I asked.\r\n\r\nHis eyebrow floated up. He nodded slowly. I filled a glass halfway from the water pump and placed it in front of him. He peered at it and began to chuckle. I giggled alongside him but my cheeks blushed with shame.\r\n\r\nThe Ocean took at long drink of water. He held the glass to his lips and his throat rolled with his gulps. He replaced the glass on the table, brandishing it with a grin. The glass was overflowing with water now, rivulets spilling down the sides. I looked at the glass and then at the Ocean. He waggled his eyebrows. This time my laugh was genuine.\r\n\r\n"Thank you for my drink." His teeth were a collection of pearls in varied hues. The effect was oddly pleasing, his smile being like a garden made more beautiful by the diversity of its blooms. "I should offer you something in return."\r\n\r\nI shook my head.\r\n\r\n"What about... a Sea Horse, a great black steed to ride through the waves? No? A little one, then."\r\n\r\nI bit my lip and looked at the floor.\r\n\r\n"Come now, every little girl wants a pony."\r\n\r\n"Mama says we don''t take gifts from the Ocean," I said to my dirty toes.\r\n\r\n"Did she now..."\r\n\r\n“Annabeth.” My mother threw my name like a harpoon when she entered the room. She yanked me back, nearly throwing me to the floor.\r\n\r\n“Eugenia,” the Ocean exhaled.\r\n\r\n“Get out.”\r\n\r\n"I was just having a lovely chat with-"\r\n\r\n"Leave."\r\n\r\n“Oh, Genie, look how gaunt you are making me with your tears. You’re wearing me away,” he grinned, indicating to the hollows of his cheeks. “I’ve brought you a gift, my love.”\r\n\r\n“I am not yours.”\r\n\r\nSomething quivered under his pale skin and dove beneath the surface, dragging his smile with it. He pouted juicily. “My beautiful Eugenia. Look at your face. A cliff face. Do you truly hate me so?”\r\n\r\n“Leave my home now. Never come back.”\r\n\r\n“Don’t you wish to hear what I have brought you?”\r\n\r\n“Get. Out.”\r\n\r\nHis gray eyes perused my plain face and scrawny frame. “Such a beautiful daughter you have.”\r\n\r\nI flushed crimson. My mother’s hands tightened on my shoulders, nails fitting into crescent groove scars. “Don’t,” she whispered.\r\n\r\n“Ah, a crack in the stone.” The Ocean gleamed. “Genie. I’ve come to atone.”\r\n\r\nMy mother leaned heavily on my shoulders.\r\n\r\n“Annabeth,” the Ocean whispered conspiratorially. “Go to the window.”\r\n\r\nI hesitated. Gently, I extracted myself from under my mother’s weight. Though I feared she might, she did not fall.\r\n\r\nI moved towards the window. Outside, there was a desert. The silver fish and jellies and albino dolphins flopped pathetically on the exposed sandy floor. On the edge, where the water once met the sand, there was a pile nearly as tall as me.\r\n\r\n"Bones," I gasped. Long bones, bleached bones, skulls with small teeth. A string of seaweed dripped from an eye socket like an inky trail of tears.\r\n\r\n“Your gift, Genie.”\r\n\r\n“You stole them away because you were jealous.”\r\n\r\nThe Ocean shook his head remorsefully. “No, Eugenia. They wanted to come. It is not my fault they didn’t have the strength to come home.” He advanced towards my mother languidly. His stormy eyes were tortuous ecstasy. “Genie, Genie, I miss your skin. Slipping, sliding. Genie, you are my moon. You draw me near, push me away. I am endlessly under your control.”\r\n\r\nThe fish gasped, gaped. “They’re dying!” I cried.\r\n\r\nThe Ocean traced the air around my mother’s jaw. “A cliff face. Created by the endless flow of water.” He leaned his face close to hers. “I am your king and you are my goddess.” Her shallow breaths created ripples that radiated across his skin. “Eugenia,” he sighed into her. “I brought them home. I''ve brought our children home.”\r\n\r\nThe cascading crash broke them apart. The glass had hit the wall satisfactorily hard.\r\n\r\nI indicated to the flailing sea life. “They’re dying,” I chastised.\r\n\r\nThe Ocean narrowed his gray eyes at me.\r\n\r\n“Annabeth,” said my mother like a prayer.\r\n\r\nThe Ocean turned to her. He was weeping. Leaking. Water dripped from his eyes, his ears, his nostrils. It oozed from his skin.\r\n\r\n“Take my gift,” he pleaded. “Forgive me. Come back to me.”\r\n\r\nMy mother was shaking. I slipped my fingers into hers.\r\n\r\n“Genie,” trembled the Ocean. “Don’t you remember? It’s like flying.”\r\n\r\n“I will never forgive you.”\r\n\r\n“I could take her,” he spat. “I could send a wave and drag her out.”\r\n\r\nMy mother’s hand tightened around mine. “But you won’t.”\r\n\r\n“Why?” The Ocean was quaking, vibrating with swirling, disobedient water.\r\n\r\nMy mother let go of my hand. She stepped closer to the Ocean and rested her fingers delicately on his cheek. His love was reflected back to him in her eyes. I understood. She stayed on the shore for love. Love of the Ocean kept her near. Love for her daughter kept her far. When she mixed her tears with the Ocean, she stood on the border where the water meets the sand and the waves kissed the tips of her toes in the lovers’ hateful equilibrium. I was not the first gift she took from the Ocean, but I was the first she would not allow him to take back.\r\n\r\nYou will leave now,” said my mother to the Ocean, “Because I am your moon and I am telling you to go.”\r\n\r\n“Eugenia,” sighed the Ocean as the roaring flood cracked his jaw. The endless wave ripped open his skin and out he cascaded. The riptide swirled at my feet. My mother’s embrace held me steady as I buried my face in her shoulder. The cabin shuddered; the beams were breaking, crashing. Things wriggled, wound around my calves and gummed at my skin. We were caught in a whirlpool, drowning, suffocating, I opened my mouth to scream-\r\n\r\n“Annabeth.”\r\n\r\nI opened my eyes. The house was still standing. We were dry. The Ocean was where it belonged and the bones were gone.\r\n\r\n“Annabeth,” said my mother. “Once you have flown in the Ocean...” She clutched my arms suddenly, her eyes wild. “The Ocean is deceptive. It is so much deeper than you could ever fathom.”\r\n\r\nI brushed her hair from her cheek. “We never take gifts from the Ocean.” Because the Ocean demands gifts in return.\r\n\r\nShe pressed her hand against mine and nodded. She turned away from the Ocean, from me. Her face was once again stone.\r\n\r\nWhen I turned eighteen, I left that cabin by the water and moved inland, as far inland as I could to where the seas are made of grass. My mother remained on the shore. She pours her tears into the Ocean, an act of mutilation, an act of devotion. The hateful lovers’ endless dance, the Ocean and his moon.\r\n\r\nI often think of those weeping skulls, my brothers and sisters, grinning with elation as they fly through the bottomless Ocean. My mother held my head underwater once. I learned my lesson. I never take gifts from the Ocean. This was my mother’s gift to me.', 'My pudgy fingers were wrapped around a sapphire, a blue glass jewel caressed to smoothness by a century of waves. I had spied it resting on a dimple in the sand. I wondered at the shard’s origin; perhaps a pirate’s goblet or the perfume bottle of an exotic, sunken princess.', '2021-02-23 02:20:22.845283', 2),
(3, 'Mahalo King Cod Filet', 'A slate-grey sky hung heavy over the President James K. Polk Memorial rest area on Interstate 64 in southern Indiana. At the fueling station, eighteen wheelers lined up under bright green lights for diesel and windshield wiper fluid from an army of apathetic attendants. A mother carrying a styrofoam coffee cup emerged from the Kwik Mart, pulling the collar of her neon pink and light purple ski jacket tight around her neck with her free hand and hurrying her two children across the broad expanse of cracked tarmac. A grove of oak trees, damp brown and bare of leaves for months now, peaked above the domed roof of the food court. At the far end of the parking lot, a mountain of exhaust-stained snow towered precariously over a red and yellow dumpster belonging to Solid Waste Disposition Incorporated, Akron, OH. A cacophony of colors and commotion.\r\n\r\nFrank eased his Kia into a parking spot and surveyed the scene. He was not like the rest of them, hustling to-and-fro on their way to somewhere else, to grandma’s house for Christmas, perhaps, or home after a work trip in Louisville or Wheeling or Pittsburgh. No. For Frank J. Marone, the President James K. Polk Memorial rest area was the destination.\r\n\r\nIn front of him, a fifty-foot steel pole held aloft the black and red cowboy hat signage of the Arby’s Corporation, the curved lines of the double-peaked crown and round brim glowed a warm red against the cold of the December day.\r\n\r\nHe picked up his phone, smiled, stuck his thumb up, and snapped a selfie. Below the image, he typed, “It’s been twelve years since I started this journey. At last, I come face to face with my white whale (or is it a cod?).” He sent it off to his forty-eight thousand-plus followers and then scrolled through his timeline. Back to the beginning, to 2009, the Roy Rogers outside of Toms River that still served the Cordon Bleu Gold, discontinued nationally in 2005. That one had been pretty easy. Just a quick jaunt down the Garden State Parkway. There and back in a short afternoon. Number nine on the list: the McSalmon Fritters, which he''d found at a barely functioning McDonalds outside of Homer, Alaska. That one had required more doing, an online fundraiser and a series of puddle jumpers.\r\n\r\nIt had started as a lark, the quest for obscure and discontinued fast food items. Something to do. To pass the time. Shits and giggles. After he''d crossed number five or six off the list of twenty-five sandwiches and tenders and salad shakers, though, the quest had taken over his life, become his identity.\r\n\r\nFrank set the phone back down on the passenger seat and watched it buzz and ding with congratulatory missives. In front of the Arby’s, a man shuffled back and forth and spoke to himself angrily, a burned-to-the-filter cigarette hanging from the corner of his mouth.\r\n\r\nFrank was there to meet a man about a sandwich. Gordon Warmbacher, franchisee of sixteen Arby’s restaurants across the upper Midwest and Great Plains, about the legendary Mahalo King Cod Filet, to be precise. The Mahalo King was the last on his list that included the KFC Turkey Tender, the Burger King Ostrich Deluxe, and Taco Bell’s Cool Ranch Gator Taco, served exclusively in Louisiana and the Florida Panhandle. He had dedicated the last twelve years of his life to tracking these items down and reviewing them for his ever-increasing number of social media fans and fast food aficionados.\r\n\r\nOf all the items on the list, the Mahalo King Cod Filet had proven to be the most elusive. Introduced by the Arby’s Corporation at select stores in 2006, sales had badly underperformed expectations. Reviews were initially poor. People had mocked the incongruity of a New England fish served Hawaiian style. The pineapple slices that sat atop the deep-fried filet smothered in traditional Hawaiian huli-huli sauce would, if left for even a few minutes, soak through the sesame seed bun, leaving it soggy and difficult to pick up. Sales of the sandwich were discontinued after only four months, but it had become something of a cult favorite, with a small but devoted fan club dedicated to getting it back on the menu.\r\n\r\nThere had been tips. Whispers and rumors of rogue Arby''s restaurants still serving the sandwich. Frank had followed one dead end lead after another for nearly a year and a half and had been on the brink of giving up when he received a cryptic Direct Message from Gordon. It could be arranged, Gordon said, but Frank would need to be discreet. Details needed to be omitted, a certain degree of anonymity required. Gordon had a lot on the line. \r\n\r\nFrank opened his car door and walked briskly toward the Arby’s entrance and past the man with the cigarette, who cursed at Frank under his breath. He entered and looked around. It was mid-afternoon, the quiet time between the lunch and dinner rushes. Brown and tan anti-slip tiling covered the floor in front of a recently-modernized counter manned by three maroon-shirted and bored looking employees. A middle-aged man in thick-rimmed glasses and a mustache waved to him from one of the booths lining the far wall. Gordon stood and extended his hand toward Frank as Frank approached. He smiled broadly. Gordon squeezed Frank''s hand firmly and shook once, up and down. The two men slid across the brown vinyl seating across the table from one another. \r\n\r\n“It’s a real pleasure to meet you,” Gordon said once they had settled in. “I’m a fan of your work. Been reading your blog since… Oh let’s see. Well, at least a couple of years now.” His accent was upper midwestern. Wisconsin. Or Minnesota, perhaps.\r\n\r\n“That’s very kind of you to say.”\r\n\r\nGordon had a fair complexion with pink cheeks. His skin was pockmarked, probably from teenage acne. Despite it, he was handsome. His greying hair was well cut and the tailoring of his linen jacket appeared bespoke. He looked more suited to someplace with tablecloths and waiters with extensive knowledge about wines and cheeses. Frank, in his wrinkled tee shirt and unwashed jeans, felt suddenly underdressed.\r\n\r\n“I’ve got my staff working up our order now. Two Mahalo Cod Filet sandwiches, side of waffle fries. What sort of pop do you like to drink?”\r\n\r\n“Sprite will be fine. Thank you.”\r\n\r\n“Of course. I don’t even know why I asked. I should have known.”\r\n\r\n“I know you said you would treat me, but really, you don’t need to do that.”\r\n\r\n“Please. Don’t mention it. It’s my pleasure.” He called across the mostly empty restaurant. “Two large Sprites, no ice in mine.” One of the women behind the counter nodded.\r\n\r\nGordon turned back to Frank. A silence fell over the booth. After a moment, Frank spoke.\r\n\r\n“How do you keep making it? The Mahalo King. It’s been, what, more than a decade since it was discontinued?” A statement in the form of a question, his voice rising slightly on the last syllable of the final word.\r\n\r\nGordon smiled mischievously. “Amazing, isn’t it. Seems like it was only yesterday. I was just starting out with my first Arby’s back then. Up in Toledo. That was a big year for me. I hate to toot my own horn, but I''ve come a long way since then."\r\n\r\nThe woman from behind the counter approached tentatively, put the Sprites on the table, and handed each of them a straw. Gordon stabbed the straw through the perforation on the plastic lid, took a long sip, and then cleared his throat.\r\n\r\n“When they announced that they were going to stop putting it on the menu, I bought up as much of the huli-huli sauce as I could. I made calls as far as Texas and California. Got the stuff FedExed to me overnight shipping. Nobody understood why I wanted this stuff. The Mahalo King never sold very well, as I''m sure you know. They were happy for me to take the stuff off their hands." He chuckled. "I’ve still got a few thousand servings left in my warehouse over in Sioux City. The rest I just sort of pull together on my own. The cod and pineapples. Those I get from the grocery store like anyone else would. Of course, the ingredients aren’t exactly the same as they would be if they came through the normal distribution channels, but I think we''ve done an admirable job recreating it.”\r\n\r\nGordon took another sip of Sprite before continuing.\r\n\r\n“What can I say? I just love this sandwich. I couldn’t let it go. Of course, corporate doesn’t approve of me serving it.” He lowered his voice to a whisper. “Which is why I have to be so secretive. It’s a violation of policy. They could take away my franchise license if they find out I’m still serving it off menu.” Gordon winked theatrically.\r\n\r\nFrank nodded. “I appreciate that. And don’t worry. I’m being very careful not to give away any specifics.”\r\n\r\nGordon looked around the restaurant. He took his glasses off, fogged them with his breath, pulled a cloth from his pants pockets, wiped the lenses clean. “Ah, here they come now.”\r\n\r\nA different server, a young man in an Arby’s baseball cap walked toward them carrying a brown plastic tray. He lowered it onto the table and then turned and walked briskly away.\r\n\r\n“Voila,” Gordon said with a flourish of his hand. “I give you the Mahalo King.” He picked up the cardboard basket that contained the sandwich and placed it in front of Frank. “There’s some extra huli-huli. I can’t get enough of the stuff.” He put two little clear plastic containers next to the sandwich. The liquid was thin and jet black.\r\n\r\nFrank observed the sandwich. The bun was already soggy from the pineapple slices. The critics had been right about that, he noted. He took out his phone again. Gordon smiled and then leaned his body away from the frame. “There she blows,” Frank typed out, invoking Melville once again. He pressed send and put the phone on the table face down. It immediately started to rattle and shimmy toward the edge. Frank took a deep breath and closed his eyes.\r\n\r\n“This is a big moment for you,” Gordon said solemnly.\r\n\r\n“Twelve years. Twenty-three thousand miles. Fifty thousand followers," Frank recounted. "Can I ask you, something?"\r\n\r\n"Shoot."\r\n\r\n"If you were reading my feed and you knew that I was looking for this sandwich, why didn''t you call me sooner?"\r\n\r\nGordon smiled. He tore off a bit of waffle fry and put it in his mouth, chewing deliberately. "Well, I supposed I could have done that, but it would have been a little too easy. Don''t you think? I didn''t want to deprive you of the journey."\r\n\r\nFrank opened his eyes and turned his head toward the window. It was starting to snow.\r\n\r\n“Have you thought about what you’re going to do next?" Gordon asked. "Now that you''ve reached the end of your list, I mean."\r\n\r\nFrank watched the lights of traffic slide past on the interstate beyond the parked cars and the fifty-foot glowing sign and the fueling station and the tower of dirty snow and the bare oak trees. He thought about the drive home, his one-bedroom apartment with its few pieces of prefabricated Swedish plywood furniture, his job managing logistics for an office supply outlet. He thought about Gordon building his empire of Arby''s. Finally, Frank turned back to the man sitting across from him. “I don’t know yet. I guess I’ll need to figure that out.”\r\n\r\nGordon sighed and smiled understandingly. “You’ll have time for that later, I suppose. What''s important is that we''ve got these Mahalo Kings." Gordon picked up his sandwich and held it aloft triumphantly, urging Frank to do the same. "For now, let''s just savor the moment."', 'A slate-grey sky hung heavy over the President James K. Polk Memorial rest area on Interstate 64 in southern Indiana. At the fueling station, eighteen wheelers lined up under bright green lights for diesel and windshield wiper fluid from an army of apathetic attendants.', '2021-02-23 02:26:58.154389', 1),
(4, 'The Nightingale and the rose', '<p style="text-align: center;"><span style="color: #e03e2d; font-size: 18pt;">written by -oscar wilde</span></p>\r\n<p style="text-align: center;"><span style="color: #e03e2d; font-size: 18pt;"><img src="http://www.gstatic.com/tv/thumb/persons/70619/70619_v9_ba.jpg" alt="oscar wilde" width="500" height="667" /></span></p>\r\n<p style="text-align: left;"><span style="color: #e03e2d; font-size: 18pt;">She said that she would dance with me if I brought her red<br />roses,&rdquo; cried the young Student; &ldquo;but in all my garden there is<br />no red rose.&rdquo;<br />From her nest in the holm-oak tree the Nightingale heard him, and<br />she looked out through the leaves, and wondered.<br />&ldquo;No red rose in all my garden!&rdquo; he cried, and his beautiful eyes filled<br />with tears. &ldquo;Ah, on what little things does happiness depend! I have<br />read all that the wise men have written, and all the secrets of philosophy<br />are mine, yet for want of a red rose is my life made wretched.&rdquo;<br />&ldquo;Here at last is a true lover,&rdquo; said the Nightingale. &ldquo;Night after night<br />have I sung of him, though I knew him not: night after night have I told<br />his story to the stars, and now I see him. His hair is dark as the<br />hyacinth-blossom, and his lips are red as the rose of his desire; but<br />passion has made his face like pale ivory, and sorrow has set her seal<br />upon his brow.&rdquo;<br />&ldquo;The Prince gives a ball to-morrow night,&rdquo; murmured the young<br />Student, &ldquo;and my love will be of the company. If I bring her a red rose<br />she will dance with me till dawn. If I bring her a red rose, I shall hold her<br />in my arms, and she will lean her head upon my shoulder, and her hand<br />3/1/2021 The Nightingale and the Rose - Short Kid Stories<br />https://www.shortkidstories.com/story/nightingale-rose/ 2/10<br />will be clasped in mine. But there is no red rose in my garden, so I shall<br />sit lonely, and she will pass me by. She will have no heed of me, and my<br />heart will break.&rdquo;<br />&ldquo;Here indeed is the true lover,&rdquo; said the Nightingale. &ldquo;What I sing<br />of, he suffers&mdash;what is joy to me, to him is pain. Surely Love is a<br />wonderful thing. It is more precious than emeralds, and dearer than fine<br />opals. Pearls and pomegranates cannot buy it, nor is it set forth in the<br />marketplace. It may not be purchased of the merchants, nor can it be<br />weighed out in the balance for gold.&rdquo;<br />&ldquo;The musicians will sit in their gallery,&rdquo; said the young Student, &ldquo;and<br />play upon their stringed instruments, and my love will dance to the sound<br />of the harp and the violin. She will dance so lightly that her feet will not<br />touch the floor, and the courtiers in their gay dresses will throng round<br />her. But with me she will not dance, for I have no red rose to give her&rdquo;;<br />and he flung himself down on the grass, and buried his face in his hands,<br />and wept.<br />&ldquo;Why is he weeping?&rdquo; asked a little Green Lizard, as he ran past<br />him with his tail in the air.<br />&ldquo;Why, indeed?&rdquo; said a Butterfly, who was fluttering about after a<br />sunbeam.<br />&ldquo;Why, indeed?&rdquo; whispered a Daisy to his neighbour, in a soft, low<br />voice.<br />&ldquo;He is weeping for a red rose,&rdquo; said the Nightingale.<br />&ldquo;For a red rose?&rdquo; they cried; &ldquo;how very ridiculous!&rdquo; and the little<br />Lizard, who was something of a cynic, laughed outright.<br />But the Nightingale understood the secret of the Student&rsquo;s sorrow,<br />and she sat silent in the oak-tree, and thought about the mystery of Love.<br />3/1/2021 The Nightingale and the Rose - Short Kid Stories<br />https://www.shortkidstories.com/story/nightingale-rose/ 3/10<br />Suddenly she spread her brown wings for flight, and soared into the<br />air. She passed through the grove like a shadow, and like a shadow she<br />sailed across the garden.<br />In the centre of the grass-plot was standing a beautiful Rose-tree,<br />and when she saw it she flew over to it, and lit upon a spray.<br />&ldquo;Give me a red rose,&rdquo; she cried, &ldquo;and I will sing you my sweetest<br />song.&rdquo;<br />But the Tree shook its head.<br />&ldquo;My roses are white,&rdquo; it answered; &ldquo;as white as the foam of the sea,<br />and whiter than the snow upon the mountain. But go to my brother who<br />grows round the old sun-dial, and perhaps he will give you what you<br />want.&rdquo;<br />So the Nightingale flew over to the Rose-tree that was growing<br />round the old sun-dial.<br />&ldquo;Give me a red rose,&rdquo; she cried, &ldquo;and I will sing you my sweetest<br />song.&rdquo;<br />But the Tree shook its head.<br />&ldquo;My roses are yellow,&rdquo; it answered; &ldquo;as yellow as the hair of the<br />mermaiden who sits upon an amber throne, and yellower than the daffodil<br />that blooms in the meadow before the mower comes with his scythe. But<br />go to my brother who grows beneath the Student&rsquo;s window, and perhaps<br />he will give you what you want.&rdquo;<br />So the Nightingale flew over to the Rose-tree that was growing<br />beneath the Student&rsquo;s window.<br />&ldquo;Give me a red rose,&rdquo; she cried, &ldquo;and I will sing you my sweetest<br />song.&rdquo;<br />3/1/2021 The Nightingale and the Rose - Short Kid Stories<br />https://www.shortkidstories.com/story/nightingale-rose/ 4/10<br />But the Tree shook its head.<br />&ldquo;My roses are red,&rdquo; it answered, &ldquo;as red as the feet of the dove, and<br />redder than the great fans of coral that wave and wave in the oceancavern. But the winter has chilled my veins, and the frost has nipped my<br />buds, and the storm has broken my branches, and I shall have no roses<br />at all this year.&rdquo;<br />&ldquo;One red rose is all I want,&rdquo; cried the Nightingale, &ldquo;only one red<br />rose! Is there no way by which I can get it?&rdquo;<br />&ldquo;There is away,&rdquo; answered the Tree; &ldquo;but it is so terrible that I dare<br />not tell it to you.&rdquo;<br />&ldquo;Tell it to me,&rdquo; said the Nightingale, &ldquo;I am not afraid.&rdquo;<br />&ldquo;If you want a red rose,&rdquo; said the Tree, &ldquo;you must build it out of<br />music by moonlight, and stain it with your own heart&rsquo;s-blood. You must<br />sing to me with your breast against a thorn. All night long you must sing<br />to me, and the thorn must pierce your heart, and your life-blood must flow<br />into my veins, and become mine.&rdquo;<br />&ldquo;Death is a great price to pay for a red rose,&rdquo; cried the Nightingale,<br />&ldquo;and Life is very dear to all. It is pleasant to sit in the green wood, and<br />to watch the Sun in his chariot of gold, and the Moon in her chariot of<br />pearl. Sweet is the scent of the hawthorn, and sweet are the bluebells<br />that hide in the valley, and the heather that blows on the hill. Yet Love is<br />better than Life, and what is the heart of a bird compared to the heart of<br />a man?&rdquo;<br />So she spread her brown wings for flight, and soared into the air.<br />She swept over the garden like a shadow, and like a shadow she sailed<br />through the grove.<br />3/1/2021 The Nightingale and the Rose - Short Kid Stories<br />https://www.shortkidstories.com/story/nightingale-rose/ 5/10<br />The young Student was still lying on the grass, where she had left<br />him, and the tears were not yet dry in his beautiful eyes.<br />&ldquo;Be happy,&rdquo; cried the Nightingale, &ldquo;be happy; you shall have your<br />red rose. I will build it out of music by moonlight, and stain it with my<br />own heart&rsquo;s-blood. All that I ask of you in return is that you will be a true<br />lover, for Love is wiser than Philosophy, though she is wise, and mightier<br />than Power, though he is mighty. Flame-coloured are his wings, and<br />coloured like flame is his body. His lips are sweet as honey, and his<br />breath is like frankincense.&rdquo;<br />The Student looked up from the grass, and listened, but he could<br />not understand what the Nightingale was saying to him, for he only knew<br />the things that are written down in books.<br />But the Oak-tree understood, and felt sad, for he was very fond of<br />the little Nightingale who had built her nest in his branches.<br />&ldquo;Sing me one last song,&rdquo; he whispered; &ldquo;I shall feel very lonely<br />when you are gone.&rdquo;<br />So the Nightingale sang to the Oak-tree, and her voice was like<br />water bubbling from a silver jar.<br />When she had finished her song the Student got up, and pulled a<br />note-book and a lead-pencil out of his pocket.<br />&ldquo;She has form,&rdquo; he said to himself, as he walked away through the<br />grove&mdash;&ldquo;that cannot be denied to her; but has she got feeling? I am<br />afraid not. In fact, she is like most artists; she is all style, without any<br />sincerity. She would not sacrifice herself for others. She thinks merely of<br />music, and everybody knows that the arts are selfish. Still, it must be<br />admitted that she has some beautiful notes in her voice. What a pity it is<br />that they do not mean anything, or do any practical good.&rdquo; And he went<br />3/1/2021 The Nightingale and the Rose - Short Kid Stories<br />https://www.shortkidstories.com/story/nightingale-rose/ 6/10<br />into his room, and lay down on his little pallet-bed, and began to think of<br />his love; and, after a time, he fell asleep.<br />And when the Moon shone in the heavens the Nightingale flew to<br />the Rose-tree, and set her breast against the thorn. All night long she<br />sang with her breast against the thorn, and the cold crystal Moon leaned<br />down and listened. All night long she sang, and the thorn went deeper<br />and deeper into her breast, and her life-blood ebbed away from her.<br />She sang first of the birth of love in the heart of a boy and a girl.<br />And on the top-most spray of the Rose-tree there blossomed a<br />marvellous rose, petal following petal, as song followed song. Pale was<br />it, at first, as the mist that hangs over the river&mdash;pale as the feet of the<br />morning, and silver as the wings of the dawn. As the shadow of a rose in<br />a mirror of silver, as the shadow of a rose in a water-pool, so was the<br />rose that blossomed on the topmost spray of the Tree.<br />But the Tree cried to the Nightingale to press closer against the<br />thorn. &ldquo;Press closer, little Nightingale,&rdquo; cried the Tree, &ldquo;or the Day will<br />come before the rose is finished.&rdquo;<br />So the Nightingale pressed closer against the thorn, and louder and<br />louder grew her song, for she sang of the birth of passion in the soul of a<br />man and a maid.<br />And a delicate flush of pink came into the leaves of the rose, like<br />the flush in the face of the bridegroom when he kisses the lips of the<br />bride. But the thorn had not yet reached her heart, so the rose&rsquo;s heart<br />remained white, for only a Nightingale&rsquo;s heart&rsquo;s-blood can crimson the<br />heart of a rose.<br />And the Tree cried to the Nightingale to press closer against the<br />thorn. &ldquo;Press closer, little Nightingale,&rdquo; cried the Tree, &ldquo;or the Day will<br />come before the rose is finished.&rdquo;<br />3/1/2021 The Nightingale and the Rose - Short Kid Stories<br />https://www.shortkidstories.com/story/nightingale-rose/ 7/10<br />So the Nightingale pressed closer against the thorn, and the thorn<br />touched her heart, and a fierce pang of pain shot through her. Bitter,<br />bitter was the pain, and wilder and wilder grew her song, for she sang of<br />the Love that is perfected by Death, of the Love that dies not in the tomb.<br />And the marvellous rose became crimson, like the rose of the<br />eastern sky. Crimson was the girdle of petals, and crimson as a ruby<br />was the heart.<br />But the Nightingale&rsquo;s voice grew fainter, and her little wings began<br />to beat, and a film came over her eyes. Fainter and fainter grew her<br />song, and she felt something choking her in her throat.<br />Then she gave one last burst of music. The white Moon heard it,<br />and she forgot the dawn, and lingered on in the sky. The red rose heard<br />it, and it trembled all over with ecstasy, and opened its petals to the cold<br />morning air. Echo bore it to her purple cavern in the hills, and woke the<br />sleeping shepherds from their dreams. It floated through the reeds of the<br />river, and they carried its message to the sea.<br />&ldquo;Look, look!&rdquo; cried the Tree, &ldquo;the rose is finished now&rdquo;; but the<br />Nightingale made no answer, for she was lying dead in the long grass,<br />with the thorn in her heart.<br />And at noon the Student opened his window and looked out.<br />&ldquo;Why, what a wonderful piece of luck!&rdquo; he cried; &ldquo;here is a red rose!<br />I have never seen any rose like it in all my life. It is so beautiful that I<br />am sure it has a long Latin name&rdquo;; and he leaned down and plucked it.<br />Then he put on his hat, and ran up to the Professor&rsquo;s house with<br />the rose in his hand.<br />The daughter of the Professor was sitting in the doorway winding<br />blue silk on a reel, and her little dog was lying at her feet.<br />3/1/2021 The Nightingale and the Rose - Short Kid Stories<br />https://www.shortkidstories.com/story/nightingale-rose/ 8/10<br />&ldquo;You said that you would dance with me if I brought you a red rose,&rdquo;<br />cried the Student. &ldquo;Here is the reddest rose in all the world. You will<br />wear it to-night next your heart, and as we dance together it will tell you<br />how I love you.&rdquo;<br />But the girl frowned.<br />&ldquo;I am afraid it will not go with my dress,&rdquo; she answered; &ldquo;and,<br />besides, the Chamberlain&rsquo;s nephew has sent me some real jewels, and<br />everybody knows that jewels cost far more than flowers.&rdquo;<br />&ldquo;Well, upon my word, you are very ungrateful,&rdquo; said the Student<br />angrily; and he threw the rose into the street, where it fell into the gutter,<br />and a cart-wheel went over it.<br />&ldquo;Ungrateful!&rdquo; said the girl. &ldquo;I tell you what, you are very rude; and,<br />after all, who are you? Only a Student. Why, I don&rsquo;t believe you have<br />even got silver buckles to your shoes as the Chamberlain&rsquo;s nephew has&rdquo;;<br />and she got up from her chair and went into the house.<br />&ldquo;What I a silly thing Love is,&rdquo; said the Student as he walked away.<br />&ldquo;It is not half as useful as Logic, for it does not prove anything, and it is<br />always telling one of things that are not going to happen, and making one<br />believe things that are not true. In fact, it is quite unpractical, and, as in<br />this age to be practical is everything, I shall go back to Philosophy and<br />study Metaphysics.&rdquo;<br />So he returned to his room and pulled out a great dusty book, and<br />began to read.&nbsp;</span></p>', '“No red rose in all my garden!” he cried, and his beautiful eyes filled.', '2021-03-01 05:05:21.502469', 4);
INSERT INTO `book_story` (`id`, `title`, `body`, `des`, `publish`, `category_id`) VALUES
(5, 'The Birthday of the Infanta', '<p style="text-align: center;"><span style="color: #e03e2d; font-size: 18pt;"><strong>written&nbsp; by - Oscar Wilde</strong></span></p>\r\n<p style="text-align: left;"><span style="color: #e03e2d; font-size: 18pt;"><strong><img src="http://www.gstatic.com/tv/thumb/persons/70619/70619_v9_ba.jpg" alt="oscar wilde" width="500" height="667" /></strong></span></p>\r\n<p>It was the birthday of the Infanta. She was just twelve years of age, and the sun was shining brightly in the gardens of the palace.</p>\r\n<p>Although she was a real Princess and the Infanta of Spain, she had only one birthday every year, just like the children of quite poor people, so it was naturally a matter of great importance to the whole country that she should have a really fine day for the occasion. And a really fine day it certainly was. The tall striped tulips stood straight up upon their stalks, like long rows of soldiers, and looked defiantly across the grass at the roses, and said: &lsquo;We are quite as splendid as you are now.&rsquo; The purple butterflies fluttered about with gold dust on their wings, visiting each flower in turn; the little lizards crept out of the crevices of the wall, and lay basking in the white glare; and the pomegranates split and cracked with the heat, and showed their bleeding red hearts. Even the pale yellow lemons, that hung in such profusion from the mouldering trellis and along the dim arcades, seemed to have caught a richer colour from the wonderful sunlight, and the magnolia trees opened their great globe-like blossoms of folded ivory, and filled the air with a sweet heavy perfume.</p>\r\n<p>The little Princess herself walked up and down the terrace with her companions, and played at hide and seek round the stone vases and the old moss-grown statues. On ordinary days she was only allowed to play with children of her own rank, so she had always to play alone, but her birthday was an exception, and the King had given orders that she was to invite any of her young friends whom she liked to come and amuse themselves with her. There was a stately grace about these slim Spanish children as they glided about, the boys with their large-plumed hats and short fluttering cloaks, the girls holding up the trains of their long brocaded gowns, and shielding the sun from their eyes with huge fans of black and silver. But the Infanta was the most graceful of all, and the most tastefully attired, after the somewhat cumbrous fashion of the day. Her robe was of grey satin, the skirt and the wide puffed sleeves heavily embroidered with silver, and the stiff corset studded with rows of fine pearls. Two tiny slippers with big pink rosettes peeped out beneath her dress as she walked. Pink and pearl was her great gauze fan, and in her hair, which like an aureole of faded gold stood out stiffly round her pale little face, she had a beautiful white rose.</p>\r\n<p>From a window in the palace the sad melancholy King watched them. Behind him stood his brother, Don Pedro of Aragon, whom he hated, and his confessor, the Grand Inquisitor of Granada, sat by his side. Sadder even than usual was the King, for as he looked at the Infanta bowing with childish gravity to the assembling counters, or laughing behind her fan at the grim Duchess of Albuquerque who always accompanied her, he thought of the young Queen, her mother, who but a short time before - so it seemed to him - had come from the gay country of France, and had withered away in the sombre splendour of the Spanish court, dying just six months after the birth of her child, and before she had seen the almonds blossom twice in the orchard, or plucked the second year&rsquo;s fruit from the old gnarled fig-tree that stood in the centre of the now grass-grown courtyard.</p>\r\n<p>&nbsp;</p>', 'It was the birthday of the Infanta. She was just twelve years of age, and the sun was shining brightly in the gardens of the palace.', '2021-03-01 05:33:36.286488', 4);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-02-22 04:04:11.370545', '1', 'Action Adventure', 1, '[{"added": {}}]', 8, 1),
(2, '2021-02-22 04:04:33.787523', '2', 'Fantasy', 1, '[{"added": {}}]', 8, 1),
(3, '2021-02-22 04:05:00.803073', '3', 'Romance', 1, '[{"added": {}}]', 8, 1),
(4, '2021-02-22 04:12:48.462064', '1', '?? ????? ????? ??', 1, '[{"added": {}}]', 7, 1),
(5, '2021-02-22 04:18:44.365630', '1', 'Unexpected end to a short story…', 2, '[{"changed": {"fields": ["Title", "Body", "Des"]}}]', 7, 1),
(6, '2021-02-23 02:20:22.981270', '2', 'My mother almost drowned me once', 1, '[{"added": {}}]', 7, 1),
(7, '2021-02-23 02:26:58.362360', '3', 'Mahalo King Cod Filet', 1, '[{"added": {}}]', 7, 1),
(8, '2021-02-23 03:05:29.922759', '1', 'Unexpected end to a short story', 2, '[{"changed": {"fields": ["Title", "Body"]}}]', 7, 1),
(9, '2021-02-23 03:06:25.432219', '1', 'Unexpected end to a short story', 2, '[{"changed": {"fields": ["Body"]}}]', 7, 1),
(10, '2021-03-01 04:11:58.255689', '1', 'Unexpected end to a short story', 2, '[{"changed": {"fields": ["Body"]}}]', 7, 1),
(11, '2021-03-01 04:53:56.127981', '4', 'oscar wilde', 1, '[{"added": {}}]', 8, 1),
(12, '2021-03-01 05:05:21.591692', '4', 'The Nightingale and the rose', 1, '[{"added": {}}]', 7, 1),
(13, '2021-03-01 05:33:36.363442', '5', 'The Birthday of the Infanta', 1, '[{"added": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'book', 'category'),
(7, 'book', 'story'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'taggit', 'tag'),
(10, 'taggit', 'taggeditem');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-22 03:38:30.962415'),
(2, 'auth', '0001_initial', '2021-02-22 03:38:34.837139'),
(3, 'admin', '0001_initial', '2021-02-22 03:38:45.289529'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-22 03:38:47.640700'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-22 03:38:47.717823'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-22 03:38:50.304700'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-22 03:38:51.325752'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-22 03:38:52.585737'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-22 03:38:52.696549'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-22 03:38:53.476178'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-22 03:38:53.532211'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-22 03:38:53.604854'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-22 03:38:54.965309'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-22 03:38:56.050627'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-22 03:38:57.299469'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-22 03:38:57.395443'),
(17, 'sessions', '0001_initial', '2021-02-22 03:38:57.934558'),
(18, 'book', '0001_initial', '2021-02-22 04:01:19.515842'),
(19, 'book', '0002_auto_20210301_1717', '2021-03-01 11:47:17.740953'),
(20, 'taggit', '0001_initial', '2021-03-01 11:47:19.787663'),
(21, 'taggit', '0002_auto_20150616_2121', '2021-03-01 11:47:22.818700'),
(22, 'taggit', '0003_taggeditem_add_unique_index', '2021-03-01 11:47:23.209329'),
(23, 'book', '0003_story_tags', '2021-03-02 04:16:46.509779');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('39duci736ygofex2vtkst6xxrb7qhia2', 'MmU3ZjIwZjE4NGM4MjI1NGVlMjBmM2JkN2Y1NDQ5MzdkMjBkMzg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2ViYThjNDY1NjE5YWQ1M2ExMTZmYjJiYzczNDM2ZTk0Y2I1NzQwIn0=', '2021-03-08 03:46:19.439271');

-- --------------------------------------------------------

--
-- Table structure for table `taggit_tag`
--

CREATE TABLE IF NOT EXISTS `taggit_tag` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taggit_taggeditem`
--

CREATE TABLE IF NOT EXISTS `taggit_taggeditem` (
`id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `book_category_name_e37e444e` (`name`);

--
-- Indexes for table `book_story`
--
ALTER TABLE `book_story`
 ADD PRIMARY KEY (`id`), ADD KEY `book_story_category_id_9ce5023c_fk_book_category_id` (`category_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `taggit_tag`
--
ALTER TABLE `taggit_tag`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`), ADD KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`), ADD KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`), ADD KEY `taggit_taggeditem_content_type_id_object_id_196cc965_idx` (`content_type_id`,`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `book_story`
--
ALTER TABLE `book_story`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `taggit_tag`
--
ALTER TABLE `taggit_tag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `book_story`
--
ALTER TABLE `book_story`
ADD CONSTRAINT `book_story_category_id_9ce5023c_fk_book_category_id` FOREIGN KEY (`category_id`) REFERENCES `book_category` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
ADD CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
