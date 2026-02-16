Sekarang coba gerakkan objek landasan ke atas sehingga objek pesawatnya hampir menyentuh batas atas area permainan/window. Kemudian jawablah pertanyaan-pertanyaan berikut:

1. Apa saja pesan log yang dicetak pada panel Output? 
JWB:
Pada saat awal player masuk ke game, game nya akan menampilkan output "Platform initialized". Kemudian setelah player menjalankan platform ke atas dan mencapai final (paling atas kiri screen), maka game akan menapilkan output "Reached objective!".

2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
JWB:
Ini sama seperti jawaban no 1 tadi, jadi saat player masuk ke game akan ada output "Platform initialized" dan saat player hampir menyentuh batas atas maka akan ada output "Reached objective!" yg mana output "Reached objective!" itu akan terus muncul ketika player hampir menyentuh batas atas.

3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
Iya, scene ObjectiveArea itu memiliki signal dan script yang mana script tersebut akan mendeteksi ketika suatu RigidBody2D bernama "BlueShip" masuk ke ObjectiveArea tersebut maka akan muncul output "Reached objective!".

------------------------------------------------------------------------------

Sekarang coba kamu inspeksi scene-scene pada contoh proyek tutorial 2 dan jawablah pertanyaan-pertanyaan berikut:

4. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite2D. Apa fungsi dari node bertipe Sprite2D?
JWB:
Node Sprite2D itu sepehaman aku berfungsi untuk menampilkan gambar (texture) 2D di layar.
Di:
- BlueShip --> Sprite2D menampilkan gambar pesawat biru.
- StonePlatform --> Sprite2D menampilkan gambar platform/batu.

5. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
JWB:
- BlueShip --> RigidBody2D
a. Bisa bergerak secara indirectly (bisa pake didorong gitu contohnya)
b. Dipengaruhi gravitasi & physics
c. Bisa tabrakan dan terdorong gaya

Cocok untuk objek yang bisa bergerak secara fisika gituu, namun perlu diingat bahwa RigidBody ini gk bisa di control secara directly.

- StonePlatform --> StaticBody2D
a. Sesuai sama namanya dia ini static / diam / tidak bergerak
b. Tidak dipengaruhi gravitasi
c. Jadi tempat pijakan atau penghalang
d. Bisa digerakin secara manually (directly gitu)

Cocok untuk tembok, lantai, platform tetap.

6. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
JWB:
Harusnya itu kalau Mass nya diubah:
- Mass nya dibesarin --> pesawatnya jadi lebih berat, jatuh lebih cepat & susah terdorong.
- Mass nya dikecilin --> pesawatnya jadi lebih ringan & mudah terdorong.

Tapi disini itu mass nya kalo diubah-ubah tidak telalu kelihatan efeknya gitu karena tidak ada gaya yang bekerja selain gravitasi standar. Intinya karena di script nya itu gk ada gaya tambahan gitu, makanya mass nya tidak terlalu kelihatan kalo diubah-ubah.

7. Ubah nilai atribut Disabled milik node CollisionShape2D pada scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
JWB:
Kalau Disabled nya dicentang (true):
- Collision nya mati.
- BlueShip akan menembus platform (tidak bisa diinjak).

8. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
JWB:
- Position --> pesawat pindah tempat
- Rotation --> pesawat berputar
- Scale --> pesawat membesar / mengecil

Visual di Viewport langsung berubah mengikuti nilai itu. Karena transform (Position, Rotation, Scale) itu mengatur tampilan objek di scene.

9. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
JWB:
menurut aku ini itu karena:
- StonePlatform itu child dari node lain yaitu PlatformBlue.
- Position yang terlihat adalah posisi relatif terhadap parent, bukan posisi global.

Jadi walaupun angkanya kelihatan "aneh", secara global tetap tampil di tempat yang benar.