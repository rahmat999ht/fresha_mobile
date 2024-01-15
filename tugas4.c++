#include <iostream>

const int MAX_SIZE = 10;

// Fungsi untuk menggabungkan dua matriks
void GabungMatriks() {
    int matriks1[MAX_SIZE][MAX_SIZE], matriks2[MAX_SIZE][MAX_SIZE], hasil[MAX_SIZE][MAX_SIZE];
    int brs1, kol1, brs2, kol2;

    // Input matriks pertama
    std::cout << "Masukkan jumlah baris matriks pertama: ";
    std::cin >> brs1;
    std::cout << "Masukkan jumlah kolom matriks pertama: ";
    std::cin >> kol1;

    std::cout << "Masukkan elemen-elemen matriks pertama:" << std::endl;
    for (int i = 0; i < brs1; ++i) {
        for (int j = 0; j < kol1; ++j) {
            std::cin >> matriks1[i][j];
        }
    }

    // Input matriks kedua
    std::cout << "Masukkan jumlah baris matriks kedua: ";
    std::cin >> brs2;
    std::cout << "Masukkan jumlah kolom matriks kedua: ";
    std::cin >> kol2;

    std::cout << "Masukkan elemen-elemen matriks kedua:" << std::endl;
    for (int i = 0; i < brs2; ++i) {
        for (int j = 0; j < kol2; ++j) {
            std::cin >> matriks2[i][j];
        }
    }

    // Gabungkan matriks
    if (kol1 == kol2) {
        for (int i = 0; i < brs1; ++i) {
            for (int j = 0; j < kol1; ++j) {
                hasil[i][j] = matriks1[i][j];
            }
        }

        for (int i = 0; i < brs2; ++i) {
            for (int j = 0; j < kol2; ++j) {
                hasil[brs1 + i][j] = matriks2[i][j];
            }
        }

        // Tampilkan hasil
        std::cout << "Matriks hasil gabungan:" << std::endl;
        for (int i = 0; i < brs1 + brs2; ++i) {
            for (int j = 0; j < kol1; ++j) {
                std::cout << hasil[i][j] << " ";
            }
            std::cout << std::endl;
        }
    } else {
        std::cout << "Operasi tidak valid. Jumlah kolom matriks harus sama." << std::endl;
    }
}

// Fungsi untuk memisahkan dua matriks
void PisahMatriks() {
    int matriks[MAX_SIZE][MAX_SIZE], matriksA[MAX_SIZE][MAX_SIZE], matriksB[MAX_SIZE][MAX_SIZE];
    int brs, kol, kolA, kolB;

    // Input matriks
    std::cout << "Masukkan jumlah baris matriks: ";
    std::cin >> brs;
    std::cout << "Masukkan jumlah kolom matriks: ";
    std::cin >> kol;

    std::cout << "Masukkan elemen-elemen matriks:" << std::endl;
    for (int i = 0; i < brs; ++i) {
        for (int j = 0; j < kol; ++j) {
            std::cin >> matriks[i][j];
        }
    }

    // Pilih kolom untuk pemisahan
    std::cout << "Masukkan jumlah kolom untuk matriks A: ";
    std::cin >> kolA;
    kolB = kol - kolA;

    // Pisahkan matriks
    for (int i = 0; i < brs; ++i) {
        for (int j = 0; j < kolA; ++j) {
            matriksA[i][j] = matriks[i][j];
        }
        for (int j = 0; j < kolB; ++j) {
            matriksB[i][j] = matriks[i][kolA + j];
        }
    }

    // Tampilkan hasil pemisahan
    std::cout << "Matriks A hasil pemisahan:" << std::endl;
    for (int i = 0; i < brs; ++i) {
        for (int j = 0; j < kolA; ++j) {
            std::cout << matriksA[i][j] << " ";
        }
        std::cout << std::endl;
    }

    std::cout << "Matriks B hasil pemisahan:" << std::endl;
    for (int i = 0; i < brs; ++i) {
        for (int j = 0; j < kolB; ++j) {
            std::cout << matriksB[i][j] << " ";
        }
        std::cout << std::endl;
    }
}

// Fungsi untuk menjumlahkan dua matriks
void JumlahMatriks() {
    int matriks1[MAX_SIZE][MAX_SIZE], matriks2[MAX_SIZE][MAX_SIZE], hasil[MAX_SIZE][MAX_SIZE];
    int brs, kol;

    // Input matriks pertama
    std::cout << "Masukkan jumlah baris matriks pertama: ";
    std::cin >> brs;
    std::cout << "Masukkan jumlah kolom matriks pertama: ";
    std::cin >> kol;

    std::cout << "Masukkan elemen-elemen matriks pertama:" << std::endl;
    for (int i = 0; i < brs; ++i) {
        for (int j = 0; j < kol; ++j) {
            std::cin >> matriks1[i][j];
        }
    }

    // Input matriks kedua
    std::cout << "Masukkan jumlah baris matriks kedua: ";
    std::cin >> brs;
    std::cout << "Masukkan jumlah kolom matriks kedua: ";
    std::cin >> kol;

    std::cout << "Masukkan elemen-elemen matriks kedua:" << std::endl;
    for (int i = 0; i < brs; ++i) {
        for (int j = 0; j < kol; ++j) {
            std::cin >> matriks2[i][j];
        }
    }

    // Jumlahkan matriks
    for (int i = 0; i < brs; ++i) {
        for (int j = 0; j < kol; ++j) {
            hasil[i][j] = matriks1[i][j] + matriks2[i][j];
        }
    }

    // Tampilkan hasil penjumlahan
    std::cout << "Matriks hasil penjumlahan:" << std::endl;
    for (int i = 0; i < brs; ++i) {
        for (int j = 0; j < kol; ++j) {
            std::cout << hasil[i][j] << " ";
        }
        std::cout << std::endl;
    }
}

// Fungsi untuk mengalikan dua matriks
void KaliMatriks() {
    int matriks1[MAX_SIZE][MAX_SIZE], matriks2[MAX_SIZE][MAX_SIZE], hasil[MAX_SIZE][MAX_SIZE];
    int brs1, kol1, brs2, kol2;

    // Input matriks pertama
    std::cout << "Masukkan jumlah baris matriks pertama: ";
    std::cin >> brs1;
    std::cout << "Masukkan jumlah kolom matriks pertama: ";
    std::cin >> kol1;

    std::cout << "Masukkan elemen-elemen matriks pertama:" << std::endl;
    for (int i = 0; i < brs1; ++i) {
        for (int j = 0; j < kol1; ++j) {
            std::cin >> matriks1[i][j];
        }
    }

    // Input matriks kedua
    std::cout << "Masukkan jumlah baris matriks kedua: ";
    std::cin >> brs2;
    std::cout << "Masukkan jumlah kolom matriks kedua: ";
    std::cin >> kol2;

    std::cout << "Masukkan elemen-elemen matriks kedua:" << std::endl;
    for (int i = 0; i < brs2; ++i) {
        for (int j = 0; j < kol2; ++j) {
            std::cin >> matriks2[i][j];
        }
    }

    // Periksa apakah matriks bisa dikalikan
    if (kol1 != brs2) {
        std::cout << "Error: Jumlah kolom matriks pertama tidak sama dengan jumlah baris matriks kedua." << std::endl;
        return;
    }

    // Inisialisasi matriks hasil dengan 0
    for (int i = 0; i < brs1; ++i) {
        for (int j = 0; j < kol2; ++j) {
            hasil[i][j] = 0;
        }
    }

    // Kalikan matriks
    for (int i = 0; i < brs1; ++i) {
        for (int j = 0; j < kol2; ++j) {
            for (int k = 0; k < kol1; ++k) {
                hasil[i][j] += matriks1[i][k] * matriks2[k][j];
            }
        }
    }

    // Tampilkan hasil perkalian
    std::cout << "Matriks hasil perkalian:" << std::endl;
    for (int i = 0; i < brs1; ++i) {
        for (int j = 0; j < kol2; ++j) {
            std::cout << hasil[i][j] << " ";
        }
        std::cout << std::endl;
    }
}

// Fungsi untuk mentranspose sebuah matriks
void TransposeMatriks() {
    int matriks[MAX_SIZE][MAX_SIZE], transpose[MAX_SIZE][MAX_SIZE];
    int brs, kol;

    // Input matriks
    std::cout << "Masukkan jumlah baris matriks: ";
    std::cin >> brs;
    std::cout << "Masukkan jumlah kolom matriks: ";
    std::cin >> kol;

    std::cout << "Masukkan elemen-elemen matriks:" << std::endl;
    for (int i = 0; i < brs; ++i) {
        for (int j = 0; j < kol; ++j) {
            std::cin >> matriks[i][j];
        }
    }

    // Transpose matriks
    for (int i = 0; i < brs; ++i) {
        for (int j = 0; j < kol; ++j) {
            transpose[j][i] = matriks[i][j];
        }
    }

    // Tampilkan hasil transpose
    std::cout << "Matriks transpose:" << std::endl;
    for (int i = 0; i < kol; ++i) {
        for (int j = 0; j < brs; ++j) {
            std::cout << transpose[i][j] << " ";
        }
        std::cout << std::endl;
    }
}

int main() {
    int pilihan;

    do {
        // Tampilkan menu operasi matriks
        std::cout << "\nMenu Operasi Matriks:" << std::endl;
        std::cout << "1. Gabungkan 2 buah matriks" << std::endl;
        std::cout << "2. Pisahkan 2 buah matriks" << std::endl;
        std::cout << "3. Jumlahkan 2 buah matriks" << std::endl;
        std::cout << "4. Kalikan 2 buah matriks" << std::endl;
        std::cout << "5. Transpose sebuah matriks" << std::endl;
        std::cout << "0. Keluar" << std::endl;
        std::cout << "Pilih operasi (0-5): ";
        std::cin >> pilihan;

        // Panggil fungsi sesuai pilihan
        switch (pilihan) {
            case 1:
                GabungMatriks();
                break;
            case 2:
                PisahMatriks();
                break;
            case 3:
                JumlahMatriks();
                break;
            case 4:
                KaliMatriks();
                break;
            case 5:
                TransposeMatriks();
                break;
            case 0:
                std::cout << "Program selesai. Terima kasih!" << std::endl;
                break;
            default:
                std::cout << "Pilihan tidak valid. Silakan coba lagi." << std::endl;
        }

    } while (pilihan != 0);

    return 0;
}
