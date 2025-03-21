# Tutorial 6: Menu & In-Game GUI 🎮

![image](https://github.com/user-attachments/assets/955f7346-45b2-44c1-bb41-07ad071eae61)

## Penambahan yang dilakukan

- Layar game over beserta button untuk kembali ke Main Menu
- Fitur select stage di Main Menu
- Layar dan efek transisi dari level 1 dan 2 (sudah diimplementasikan saat Tutorial 4)

## Latihan: Membuat Main Menu, Select Stage, dan GUI LifeCounter

![image](https://github.com/user-attachments/assets/918b97d1-d4ab-427a-8d73-6e6806f75226)

Main Menu merupakan Margin Container yang strukturnya terdiri dari VBox, yang memiliki child element berupa title, button start serta select stage, dan AnimatedSprite dari karakter Fox pada walking state. Lalu digunakan juga Parallax Background sebagai latar belakang. Pada Main menu, digunakan anchor preset full rect. Selain itu, Link Button navigasi memiliki script yang terhubung dengan connection node untuk signal pressed():

![image](https://github.com/user-attachments/assets/1faa20f6-04b5-43c1-9edc-b24e5c9b4868)

Pada Link Button New game, set scene to loadnya ke path scenes/Level1.tscn, sedangkan untuk button select stage, ke scenes/signals/SelectStageMenu.tscn

![image](https://github.com/user-attachments/assets/a3ffd995-ef50-4a1f-8811-63777f24ad27)

Untuk SelectStageMenu, dibuat juga scene yang mirip dengan Main Menu. Bedanya, Fox memiliki animasi idle, dengan textnya adalah Select Stage dengan dua button, Level 1 dan Level 2. Terakhir, jangan lupa men-set Main Menu sebagai Main Scene pada Project > Project Settings > Application > Run > Main Scene.

![image](https://github.com/user-attachments/assets/ce4c0db6-d688-421f-88e6-04bd47b1023f)

Selanjutnya, Life Counter akan memanfaatkan variabel yang dapat terlihat oleh seluruh file pada project, yaitu global variable. Akan dibuat file script dengan men-inisialisasi variable level = 1 dan lives = 3. Lalu pada settings > globals, tambahkan script global.gd tadi. Buat juga scene LifeCounter berisi label untuk menampilkan state Level dan nyawa Player. Terakhir. tambahkan scene tadi sebagai child dari CanvasLayer, dan tambahkan layer tersebut sebagai child dengan posisi paling luar/bawah dari scene Level 1 dan 2, agar berada di paling depan.

![image](https://github.com/user-attachments/assets/6d07e7a5-d619-4564-b315-8a4a77fcbd75)

![image](https://github.com/user-attachments/assets/e378772e-eb31-4df8-9d60-1d8cba7568f5)

Dengan begitu, GUI sudah berhasil diimplementasikan, dan tidak hard coded seperti pada tutorial 4.

## Latihan: Membuat Layar Game Over dan Transisi Level

![image](https://github.com/user-attachments/assets/0a820dcd-6457-4203-ac38-74b4304b0104)

Untuk layar game over, implementasinya mirip dengan main menu, menggunakan margin container, yang di dalamnya berisi Vbox, dengan tulisan "GAME OVER", animasi Fox, dan Link Button untuk navigasi ke Main menu. Selain itu, tambahkan juga script yang akan me-reset nyawa menjadi 3 kembali setelah game over, dengan cara men-set Global.lives = 3.

![image](https://github.com/user-attachments/assets/b8090f8e-deb2-4716-887b-ed981fe7d699)

Selanjutnya, untuk layar transisi level, akan menampilkan karakter Fox, teks, beserta animasinya dengan AnimationPlayer. AnimationPlayer akan mem-play visible ratio dari label, dari 0 ke 100 dalam 3 detik, untuk animasi teks.

Dengan begitu, main menu, fitur pilih stage, game over, dan transisi level telah berhasil diimplementasikan ✨

# Tutorial 4: Basic 2D Level Design 🎮

![image](https://github.com/user-attachments/assets/e3972c7c-0504-463e-a046-96adf90e0c65)

![image](https://github.com/user-attachments/assets/40338aad-a1a7-47e0-b404-bd2d3d9b567c)

## Penambahan yang dilakukan

- Menambahkan level baru dengan tilemap berbeda dan tingkat kesulitan yang meningkat dibandingkan dengan level pertama
- Menambahkan spawner berupa Eagle yang berjatuhan dan Patrolling enemies berupa Oposum
- Menambahkan text yang muncul ketika dilewati player, parallax background, dan win screen ketika berhasil menyelesaikan level
- Mengganti texture untuk terrain dan menggunakan animated sprite untuk player dan enemies

![Screenshot 2025-03-02 092358](https://github.com/user-attachments/assets/49647da9-ddd6-4baf-a6c6-18d9f68124d5)

## Proses pengerjaan Level 2

Pertama, setelah menyelesaikan level 1 dan menyesuaikan Texture dan Sprite, pada Level 2 akan ditambahkan enemy berupa Oposum, dengan behaviornya akan ber'patroli' di platformnya. Jika Oposum mendeteksi bahwa dia telah berada di ujung platform, dia akan berbalik arah dan terus maju sampai ke tepi, dan begitu seterusnya. Behavior ini dapat dicapai dengan menggunakan raycast dan dilakukan pengecekan apakah raycast tersebut sudah ber-colliding dengan tepi platform. Selain itu, jika player bersentuhan dengan Oposum, signal Lose juga akan terpanggil.

![Screenshot 2025-03-02 092134](https://github.com/user-attachments/assets/0867e9f4-4453-4f4f-a332-37ac3c71ad24)

![image](https://github.com/user-attachments/assets/c9acde9d-757c-46b0-a265-27e7e62b8128)

![image](https://github.com/user-attachments/assets/1abdd929-b229-4a10-a9d4-290cd35c1fe9)

Lalu akan dibuat juga file scene Level 2 dengan tilemap dan text yang akan muncul jika Player melewati trigger area. Ditambahkan juga Parallax background yang memberikan ilusi jarak ketika Player bergerak. Cara menambahkan tilemap mirip seperti pada pengerjaan Level 1.

![image](https://github.com/user-attachments/assets/8d39254c-7d89-48bb-935b-d529e4293534)

Untuk mengedit dan menganimasi teks, pertama akan dibuat Node AnimatedText. lalu tambahkan child Label untuk formatting dan isi teks dan Area2D untuk mengecek apakah Player sedang berada di dalam area. Pada scriptnya, akan diset visible rationya (visible ratio adalah rasio seberapa banyak huruf yang ditampilkan. 1 berarti ditampilkan semua huruf, 0 berarti tidak ada huruf yang ditampilkan.) Terakhir, ditambahkan juga animation player untuk label visible ratio 0 ke 1 untuk memberikan animasi pada tulisan tersebut.

![image](https://github.com/user-attachments/assets/720d68f5-90dd-433b-8149-121afdad014b)

![image](https://github.com/user-attachments/assets/ab3dc51e-3540-4d17-8150-5a746ebdb95c)

Selain itu, diganti juga transisi jika telah berhasil mencapai objektif yaitu rumah. Ditambahkan animated text dan Player sebagai fox yang sedang dalam posisi Idle di posisi tengah. Hasil WinScreen ketika telah berhasil menyelesaikan level 1:

![image](https://github.com/user-attachments/assets/0a371fe1-0955-43f2-8ac4-e640e9fd7c50)

Dan CreditScreen ketika telah berhasil menyelesaikan level 2:

![image](https://github.com/user-attachments/assets/267b7ade-9711-4be4-a84d-3c72aa47e3b3)

Dengan begitu, level 2 telah berhasil diimplementasikan ✨

## Referensi

- Game assets, sunny land https://ansimuz.itch.io/sunny-land-pixel-game-art
- Behavior untuk enemies and traps https://youtu.be/kBzV7vgdQfU?si=DWudA_cqm0L6fAb9
- Implementasi Patroling enemy https://youtu.be/P02PcfgqrY8?si=1u9iT-oFTs2zr1LI
- Implementasi animated text https://youtu.be/005wsHmJnXs?si=LwiZOPmwL9AJEvUt

