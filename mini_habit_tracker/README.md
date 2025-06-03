# mini_habit_tracker

A new Flutter project.

## Screenshot

### Halaman Utama
![1](images/1.png)

### Uji Strikethrough
![2](images/2.png)

### Uji Tambah Habit

#### Menambahkan Habit
![4](images/4.png)

#### Mencoba Menambahkan Habit Tanpa Teks
![11](images/11.png)

### Tampilan Habit Setelah DiTambahkan
![5](images/5.png)

### Uji Edit Habit

#### Mengedit Salah Satu Habit 
![12](images/12.png) 

#### Tampilan Dialog Data Habit
![6](images/6.png)
 
#### Tampilan Setelah Mengedit Habit
![7](images/7.png)

### Uji Hapus Habit

#### Tampilan Tombol Hapus 
![8](images/8.png)

#### Dialog Konfirmasi 
![9](images/9.png)

#### Tampilan Habit Setelah Menghapus Salah Satu
![10](images/10.png)

### Uji Progress Bar 
![13](images/13.png)

### Uji Reset

#### Sebelum Tombol Reset
![15](images/15.png)

#### Setelah Dipencet Tombol Reset
![14](images/14.png)

### Uji Ephemeral State


### Amati Output Print
print('build ${habit.name}');
akan muncul di konsol setiap kali build() dipanggil ulang untuk ListView.builder, yaitu saat item-item habit ditampilkan ulang ke layar. Ini artinya log tersebut muncul setiap kali UI yang menampilkan daftar habits dibangun ulang.

#### 1. Menambahkan Habit Baru
- Ketika Anda menekan tombol ➕ (add) lalu menyimpan habit baru, setState akan dipanggil untuk menambahkan habit.
- Ini memicu rebuild.

#### 2. Mengedit Habit 
- Ketika Anda mengedit habit, setState juga dipanggil untuk memperbarui isi habit.
- Maka ListView di-rebuild, dan setiap habit dicetak ulang

#### 3. Menghapus Habit
- Setelah habit dihapus dan setState dipanggil, Flutter akan membangun ulang semua habit yang tersisa.
- Maka log akan muncul ulang untuk semua habit yang masih ada

#### 4. Check/Uncheck
- Ketika Anda menekan checkbox atau tap ListTile (yang toggle status habit), setState dipanggil.
- UI di-rebuild untuk semua item, sehingga akan muncul log build [habit.name] untuk semuanya.