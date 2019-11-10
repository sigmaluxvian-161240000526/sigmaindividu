<?php 

defined('BASEPATH') OR exit('No direct script access allowed');
class M_mhs extends CI_Model
{
	public function ambilmhs(){
		$query = $this->db->get('tampil');
		return $query->result_array();
	}
	public function editambilmhs($id){
		$this->db->where('id',$id);
		$query = $this->db->get('mahasiswa');
		return $query->result_array();
	}
	public function tambah_mhs()
	{
		$data = array(
		'nim'=>$this->input->post('nim'),
		'nama_mhs' => $this->input->post('nama'),
		'alamat' => $this->input->post('alamat'),
		'jk' => $this->input->post('jk'),
		'no_hp' => $this->input->post('no_hp'));

	return $this->db->insert('tampil',$data);
	}

	public function edit_mhs()
	{
		$data = array(
		'nim'=>$this->input->post('nim'),
		'nama_mhs' => $this->input->post('nama'),
		'alamat' => $this->input->post('alamat'),
		'jk' => $this->input->post('jk'),
		'no_hp' => $this->input->post('no_hp'));

		$id_lama = $this->input->post('id');
		$this->db->where('id', $id_lama);
		return $this->db->update('tampil',$data);
	}
	public function hapus_mhs($id){
		return $this->db->delete('tampil',array('id' =>$id));
	}
}

