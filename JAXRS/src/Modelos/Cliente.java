package Modelos;

//import java.io.Serializable;

/*
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
*/

//public class Cliente implements Serializable{
//@JsonInclude(Include.NON_EMPTY)

public class Cliente{
	private int id;
	private String nombre;
	private String apellidos;
	private String usuario;
	private String correo;
	private String password;
	private int edad;
	private double peso;
	private double estatura;
	
	public Cliente(int id, String nombre, String apellidos, String usuario,
			String correo, String password, int edad, double peso,
			double estatura) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.usuario = usuario;
		this.correo = correo;
		this.password = password;
		this.edad = edad;
		this.peso = peso;
		this.estatura = estatura;
	}

	public Cliente(String nombre, String apellidos, String usuario,
			String correo, String password, int edad) {
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.usuario = usuario;
		this.correo = correo;
		this.password = password;
		this.edad = edad;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public double getEstatura() {
		return estatura;
	}

	public void setEstatura(double estatura) {
		this.estatura = estatura;
	}
	
	
}
