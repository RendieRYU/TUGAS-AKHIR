#include <iostream>
using namespace std;
struct node{
	int nik;
 	string nama; 
 	string ttl;
 	string jk;
 	string alamat;
 	string rt_rw;
 	string agama;
 	string status;
 	string pekerjaan;
 	string kewarganegaraan;
 	node* next;
 	node* prev;
};
node* head;
node* akhir;
node* cekData;
node* insert;
node* del;
class KTP{
 	public :
 	void inis();
 	int isEmpty();
 	void baru(int nik ,string nama, string ttl, string jk, string alamat, string rt_rw, string agama, string status, string pekerjaan, string kewarganegaraan);
 	void Dequeue();
 	void cetak();
 	void menu();
 	private :
 	int priorit;
};
void KTP::inis(){
 	head = NULL;
 	akhir = NULL;
}
 
int KTP::isEmpty(){
 	if(head == NULL)
 		return 1;
 	else
 		return 0;
 }
 
void KTP::baru(int nik ,string nama, string ttl, string jk, string alamat, string rt_rw, string agama, string status, string pekerjaan, string kewarganegaraan){
 	insert = new node(); //alokasi memori/ membuat objek
 	insert->nik = nik;
 	insert->nama = nama;
 	insert->ttl = ttl;
 	insert->jk = jk;
 	insert->alamat = alamat;
 	insert->rt_rw = rt_rw;
 	insert->agama = agama;
 	insert->status = status;
 	insert->pekerjaan = pekerjaan;
 	insert->kewarganegaraan = kewarganegaraan;
 	insert->next = NULL;
 	insert->prev = NULL;
 	if(isEmpty()==1){
 		head = insert;
 		head->next = NULL;
 		head->prev = NULL;
 		akhir=head;
 	}else{
 		akhir->next = insert;
 	insert->prev = akhir;
 	akhir = insert;
 	}
 cout<<"\nEnqueue berhasil"<<endl;
 }
 
void KTP::Dequeue(){ //fungsi penghapusan data
 	int hapus,nik;
 	if(head==NULL){
 		cout<<"\nData kosong, penghapusan tidak dapat dilakukan"<<endl; //tampilannya data yang habis
 	}else{
 		hapus=head->nik;
 		del = head;
 		head = head->next;
 		delete del;
 		cout<<"Dequeue berhasil"<<endl;
 	}
 }
 
void KTP::cetak(){
	int i=1;
 	cekData = head;
 	if(head == NULL)
 		cout<<"\ntidak ada data dalam linked list"<<endl;
 	else{

 		while(cekData!=NULL){
			cout<<"No.   :" <<i<< endl;
			cout<<"\t\t\t\tPROVINSI JAWA TENGAH\n";
			cout<<"\t\t\t\tKABUPATEN KLATEN";
			cout<<"\n\tNIK \t\t\t\t: "<< cekData->nik;
 			cout<<"\n\tNama \t\t\t\t: " <<cekData->nama;
 			cout<<"\n\tTempat/TglLahir \t\t: " <<cekData->ttl;
 			cout<<"\n\tJenis Kelamin \t\t\t: " <<cekData->jk;
 			cout<<"\n\tAlamat\t\t\t\t :" <<cekData->alamat;
 			cout<<"\n\tRt/rw\t\t\t\t: "<<cekData->rt_rw;
 			cout<<"\n\tAgama\t\t\t\t: "<<cekData->agama;
 			cout<<"\n\tStatus kawin(menikah/belum)\t: "<<cekData->status;
 			cout<<"\n\tPekerjaan\t\t\t: "<<cekData->pekerjaan;
 			cout<<"\n\tKewarganegaraan\t\t\t: "<<cekData->kewarganegaraan<<endl<<endl;
 			cekData = cekData->next;
 			if(cekData != NULL){
 				cout<<endl;
 			}
 			i++;
 		}
 	}
 }
 
void KTP::menu(){
 	int pilih;
 	char ulang;
 	int nik;
 	string nama; 
 	string ttl;
 	string jk;
 	string alamat;
 	string rt_rw;
 	string agama;
 	string status;
 	string pekerjaan;
 	string kewarganegaraan;
 
 	do{
 		system("cls");
 		cout<<"Menu : "<<endl;
 		cout<<"1. Tambah data(Enqueue)"<<endl;
 		cout<<"2. Hapus data(Dequeue)"<<endl;
 		cout<<"3. Print"<<endl;
 		cout<<"4. Exit"<<endl<<endl;
 		cout<<"Masukkan pilihan Anda : ";cin>>pilih;
 		cout<<endl;
 		switch(pilih){
 			case 1 :
 				cout<<"\tNIK 	: ";cin>>nik;cin.ignore();
 				cout<<"\tNama : ";getline(cin, nama);
 				cout<<"\tTempat tanggal lahir : ";getline(cin, ttl);
 				cout<<"\tJenis kelamin : ";getline(cin, jk);
 				cout<<"\tAlamat: ";getline(cin, alamat);
 				cout<<"\tRt/rw : ";getline(cin, rt_rw);
 				cout<<"\tAgama : ";getline(cin, agama);
 				cout<<"\tStatus perkawinan : ";getline(cin, status);
 				cout<<"\tPekerjaan : ";getline(cin, pekerjaan);
 				cout<<"\tKewarganegaraan : ";getline(cin, kewarganegaraan);
 
 
				baru(nik,nama,ttl,jk,alamat,rt_rw,agama,status,pekerjaan,kewarganegaraan);
 				break;
 			case 2 :
 				Dequeue();
 			break;
 			case 3 :
 				cetak();
 			break;
 			case 4 :
 				exit(0);
 			break;
 			default :
 				cout<<"\nPilihan tidak tersedia"<<endl;
 		}	
 	cout<<"\nKembali ke menu?(y/n)";
 	cin>>ulang;
 	}while(ulang=='y' || ulang=='Y');
 }
main(){ 
 	KTP x;
 	x.inis();
 	x.menu();
}
