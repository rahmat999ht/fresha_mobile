#include <iostream>
#include <string>

using namespace std;

struct DataBarang {
    string kodeBrg;
    string namaBrg;
    float hrgSatuan;
    float jumlahBeli;
    float totHrg;
};

struct DataPelanggan {
    string kodePlgn;
    string namaPlgn;
    DataBarang brg[50];
    float subTot;
    float potongan;
    float grandTot;
};

int main() {
    DataPelanggan pembeli[100];
    int numPelanggan = 0;
    int numBarang = 0; // Inisialisasi numBarang di sini
    char inputBarang;

    char inputPelanggan;
    do {
        cout << "PENJUALAN TOKO SERBA ADA-ADA SAJA" << endl;
        cout << "Masukkan Data Pembeli ke-" << numPelanggan + 1 << ":" << endl;

        cout << "Kode Pelanggan : ";
        cin >> pembeli[numPelanggan].kodePlgn;

        cout << "Nama Pelanggan : ";
        cin.ignore();
        getline(cin, pembeli[numPelanggan].namaPlgn);

        do {
            cout << "Masukkan Data Barang ke-" << numBarang + 1 << " :" << endl;

            cout << "Kode Barang    : ";
            cin >> pembeli[numPelanggan].brg[numBarang].kodeBrg;

            cout << "Nama Barang    : ";
            cin.ignore();
            getline(cin, pembeli[numPelanggan].brg[numBarang].namaBrg);

            cout << "Harga Satuan   : Rp. ";
            cin >> pembeli[numPelanggan].brg[numBarang].hrgSatuan;

            cout << "Jumlah Barang  : ";
            cin >> pembeli[numPelanggan].brg[numBarang].jumlahBeli;

            // Menghitung total harga barang
            pembeli[numPelanggan].brg[numBarang].totHrg =
                pembeli[numPelanggan].brg[numBarang].hrgSatuan * pembeli[numPelanggan].brg[numBarang].jumlahBeli;

            cout << "Total Harga    : Rp. " << pembeli[numPelanggan].brg[numBarang].totHrg << endl;

            numBarang++;

            cout << "Ada Barang lain [y/t]: ";
            cin >> inputBarang;

        } while (inputBarang == 'y' || inputBarang == 'Y');

        // Menghitung subtotal
        pembeli[numPelanggan].subTot = 0;
        for (int i = 0; i < numBarang; i++) {
            pembeli[numPelanggan].subTot += pembeli[numPelanggan].brg[i].totHrg;
        }

        // Menghitung potongan berdasarkan total jumlah pembelian barang
        if (numBarang >= 5 && numBarang <= 10) {
            pembeli[numPelanggan].potongan = 0.05 * pembeli[numPelanggan].subTot;
        } else if (numBarang >= 11 && numBarang <= 20) {
            pembeli[numPelanggan].potongan = 0.1 * pembeli[numPelanggan].subTot;
        } else if (numBarang > 20) {
            pembeli[numPelanggan].potongan = 0.2 * pembeli[numPelanggan].subTot;
        } else {
            pembeli[numPelanggan].potongan = 0;
        }

        // Menghitung grand total
        pembeli[numPelanggan].grandTot = pembeli[numPelanggan].subTot - pembeli[numPelanggan].potongan;

        numPelanggan++;

        cout << "Input Transaksi berikutnya [y/t]: ";
        cin >> inputPelanggan;

    } while (inputPelanggan == 'y' || inputPelanggan == 'Y');

    // Menampilkan nota transaksi
    cout << "NOTA TRANSAKSI" << endl;
    for (int i = 0; i < numPelanggan; i++) {
        cout << "Kode Pelanggan: " << pembeli[i].kodePlgn << endl;
        cout << "Nama Pelanggan: " << pembeli[i].namaPlgn << endl;

        cout << "| No. | Kode Brg | Nama Barang | Harga Stn | Jumlah | Total Harga |" << endl;
        for (int j = 0; j < numBarang; j++) {
            cout << "| " << j + 1 << " | " << pembeli[i].brg[j].kodeBrg << " | " << pembeli[i].brg[j].namaBrg
                 << " | Rp. " << pembeli[i].brg[j].hrgSatuan << " | " << pembeli[i].brg[j].jumlahBeli
                 << " | Rp. " << pembeli[i].brg[j].totHrg << " |" << endl;
        }

        cout << "Sub Total Harga        : Rp. " << pembeli[i].subTot << endl;
        cout << "Total Jumlah Barang    : " << numBarang << endl;
        cout << "Potongan               : Rp. " << pembeli[i].potongan << endl;
        cout << "Jumlah yang harus dibayar : Rp. " << pembeli[i].grandTot << endl << endl;
    }

    return 0;
}
