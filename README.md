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

