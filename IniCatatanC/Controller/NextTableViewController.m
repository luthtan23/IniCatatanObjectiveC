//
//  NextTableViewController.m
//  IniCatatanC
//
//  Created by iei19100004 on 20/05/21.
//

#import "NextTableViewController.h"
#import "HeroModel.h"
#import "HeroTableViewCell.h"
#import "DetailHeroViewController.h"

@interface NextTableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation NextTableViewController

NSArray *heroes;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"HeroTableViewCell" bundle:nil] forCellReuseIdentifier:@"HeroCell"];
    heroes = [[NSArray alloc] init];
    
    [self setHeroes];
//
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"CUAKSS" style:UIBarButtonItemStylePlain target:self action:@selector(backButtonClicked:)];
    
    self.navigationItem.title = @"Pahlawan Indonesia";
//    self.navigationItem.leftBarButtonItem = backButton;
//    self.tableView.delegate = self;
    
    

}

-(void) backButtonClicked: (UIBarButtonItem *) sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return heroes.count;
}

-(void) setHeroes {
    heroes = @[
        [[HeroModel alloc] initWithName:@"Ahmad Dahlan" image:[UIImage imageNamed:@"ahmad_dahlan"] desc:@"Salah seorang ulama dan khatib terkemuka di Masjid Besar Kasultanan Yogyakarta pada masa itu, dan ibu dari K.H. Ahmad Dahlan adalah puteri dari H. Ibrahim yang juga menjabat penghulu Kesultanan Ngayogyakarta Hadiningrat pada masa itu. KH. Ahmad Dahlan telah mempelopori kebangkitan ummat Islam untuk menyadari nasibnya sebagai bangsa terjajah yang masih harus belajar dan berbuat." ],
        [[HeroModel alloc] initWithName:@"Ahmad Yani" image:[UIImage imageNamed:@"ahmad_yani"] desc:@"Jenderal TNI Anumerta Ahmad Yani (juga dieja Achmad Yani; lahir di Purworejo, Jawa Tengah, 19 Juni 1922 – meninggal di Lubang Buaya, Jakarta, 1 Oktober 1965 pada umur 43 tahun) adalah komandan Tentara Nasional Indonesia Angkatan Darat, dan dibunuh oleh anggota Gerakan 30 September saat mencoba untuk menculik dia dari rumahnya." ],
        [[HeroModel alloc] initWithName:@"Sutomo" image:[UIImage imageNamed:@"bung_tomo"] desc:@"Sutomo (lahir di Surabaya, Jawa Timur, 3 Oktober 1920 – meninggal di Padang Arafah, Arab Saudi, 7 Oktober 1981 pada umur 61 tahun) lebih dikenal dengan sapaan akrab oleh rakyat sebagai Bung Tomo, adalah pahlawan yang terkenal karena peranannya dalam membangkitkan semangat rakyat untuk melawan kembalinya penjajah Belanda melalui tentara NICA, yang berakhir dengan pertempuran 10 November 1945 yang hingga kini diperingati sebagai Hari Pahlawan." ],
        [[HeroModel alloc] initWithName:@"Gatot Soebroto" image:[UIImage imageNamed:@"gatot_subroto"] desc:@"Jenderal TNI (Purn.) Gatot Soebroto (lahir di Sumpiuh, Banyumas, Jawa Tengah, 10 Oktober 1907 – meninggal di Jakarta, 11 Juni 1962 pada umur 54 tahun) adalah tokoh perjuangan militer Indonesia dalam merebut kemerdekaan dan juga pahlawan nasional Indonesia. Ia dimakamkan di Ungaran, kabupaten Semarang." ],
        [[HeroModel alloc] initWithName:@"Ki Hadjar Dewantara" image:[UIImage imageNamed:@"ki_hadjar_dewantara"] desc:@"Raden Mas Soewardi Soerjaningrat (EBI: Suwardi Suryaningrat, sejak 1922 menjadi Ki Hadjar Dewantara, EBI: Ki Hajar Dewantara, beberapa menuliskan bunyi bahasa Jawanya dengan Ki Hajar Dewantoro; lahir di Pakualaman, 2 Mei 1889 – meninggal di Yogyakarta, 26 April 1959 pada umur 69 tahun; selanjutnya disingkat sebagai \"Soewardi\" atau \"KHD\") adalah aktivis pergerakan kemerdekaan Indonesia, kolumnis, politisi, dan pelopor pendidikan bagi kaum pribumi Indonesia dari zaman penjajahan Belanda. Ia adalah pendiri Perguruan Taman Siswa, suatu lembaga pendidikan yang memberikan kesempatan bagi para pribumi untuk bisa memperoleh hak pendidikan seperti halnya para priyayi maupun orang-orang Belanda." ],
        [[HeroModel alloc] initWithName:@"Mohammad Hatta" image:[UIImage imageNamed:@"mohammad_hatta"] desc:@"Dr.(HC) Drs. H. Mohammad Hatta (lahir dengan nama Mohammad Athar, dikenal sebagai Bung Hatta; lahir di Fort de Kock (sekarang Bukittinggi, Sumatera Barat), Hindia Belanda, 12 Agustus 1902 – meninggal di Jakarta, 14 Maret 1980 pada umur 77 tahun) adalah tokoh pejuang, negarawan, ekonom, dan juga Wakil Presiden Indonesia yang pertama. Ia bersama Soekarno memainkan peranan penting untuk memerdekakan bangsa Indonesia dari penjajahan Belanda sekaligus memproklamirkannya pada 17 Agustus 1945. Ia juga pernah menjabat sebagai Perdana Menteri dalam Kabinet Hatta I, Hatta II, dan RIS. Ia mundur dari jabatan wakil presiden pada tahun 1956, karena berselisih dengan Presiden Soekarno. Hatta juga dikenal sebagai Bapak Koperasi Indonesia." ],
        [[HeroModel alloc] initWithName:@"Soedirman" image:[UIImage imageNamed:@"sudirman"] desc:@"Jenderal Besar Raden Soedirman (EYD: Sudirman; lahir 24 Januari 1916 – meninggal 29 Januari 1950 pada umur 34 tahun) adalah seorang perwira tinggi Indonesia pada masa Revolusi Nasional Indonesia. Menjadi panglima besar Tentara Nasional Indonesia pertama, ia secara luas terus dihormati di Indonesia. Terlahir dari pasangan rakyat biasa di Purbalingga, Hindia Belanda, Soedirman diadopsi oleh pamannya yang seorang priyayi. Setelah keluarganya pindah ke Cilacap pada tahun 1916, Soedirman tumbuh menjadi seorang siswa rajin; ia sangat aktif dalam kegiatan ekstrakurikuler, termasuk mengikuti program kepanduan yang dijalankan oleh organisasi Islam Muhammadiyah. Saat di sekolah menengah, Soedirman mulai menunjukkan kemampuannya dalam memimpin dan berorganisasi, dan dihormati oleh masyarakat karena ketaatannya pada Islam. Setelah berhenti kuliah keguruan, pada 1936 ia mulai bekerja sebagai seorang guru, dan kemudian menjadi kepala sekolah, di sekolah dasar Muhammadiyah; ia juga aktif dalam kegiatan Muhammadiyah lainnya dan menjadi pemimpin Kelompok Pemuda Muhammadiyah pada tahun 1937. Setelah Jepang menduduki Hindia Belanda pada 1942, Soedirman tetap mengajar. Pada tahun 1944, ia bergabung dengan tentara Pembela Tanah Air (PETA) yang disponsori Jepang, menjabat sebagai komandan batalion di Banyumas. Selama menjabat, Soedirman bersama rekannya sesama prajurit melakukan pemberontakan, namun kemudian diasingkan ke Bogor." ],
        [[HeroModel alloc] initWithName:@"Soekarno" image:[UIImage imageNamed:@"sukarno"] desc:@"Dr.(H.C.) Ir. H. Soekarno (ER, EYD: Sukarno, nama lahir: Koesno Sosrodihardjo) (lahir di Surabaya, Jawa Timur, 6 Juni 1901 – meninggal di Jakarta, 21 Juni 1970 pada umur 69 tahun) adalah Presiden pertama Republik Indonesia yang menjabat pada periode 1945–1967. Ia memainkan peranan penting dalam memerdekakan bangsa Indonesia dari penjajahan Belanda. Ia adalah Proklamator Kemerdekaan Indonesia (bersama dengan Mohammad Hatta) yang terjadi pada tanggal 17 Agustus 1945. Soekarno adalah yang pertama kali mencetuskan konsep mengenai Pancasila sebagai dasar negara Indonesia dan ia sendiri yang menamainya." ],
        [[HeroModel alloc] initWithName:@"Soepomo" image:[UIImage imageNamed:@"supomo"] desc:@"Prof. Mr. Dr. Soepomo (Ejaan Soewandi: Supomo; lahir di Sukoharjo, Jawa Tengah, 22 Januari 1903 – meninggal di Jakarta, 12 September 1958 pada umur 55 tahun) adalah seorang pahlawan nasional Indonesia. Soepomo dikenal sebagai arsitek Undang-undang Dasar 1945, bersama dengan Muhammad Yamin dan Soekarno." ],
    ];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HeroTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"HeroCell" forIndexPath:indexPath];
    
    HeroModel *heroModel = [[HeroModel alloc] init];
    heroModel = heroes[indexPath.row];
    
    cell.titleHero.text = heroModel.name;
    cell.descHero.text = heroModel.desc;
    cell.imageTable.image = heroModel.image;
    
    cell.imageTable.layer.cornerRadius= cell.imageTable.frame.size.height /2;
    cell.imageTable.clipsToBounds = YES;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailHeroViewController *detail = [[DetailHeroViewController alloc] initWithNibName:@"DetailHeroViewController" bundle:nil];
    detail.hero = heroes[indexPath.row];
    
    [self.navigationController pushViewController:detail animated:YES];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
