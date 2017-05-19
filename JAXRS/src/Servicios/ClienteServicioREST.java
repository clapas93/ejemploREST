package Servicios;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import Modelos.Cliente;

@Path("/Cliente")
public class ClienteServicioREST {
	Map<Integer, Cliente> clientes = new HashMap<Integer, Cliente>();
	
	Cliente c1 = new Cliente("Juan","Perez Hernandez","Ju","jperez@hotmail.com","juanitoperez",39);
	Cliente c2 = new Cliente("Ana", "Gomez Lopez", "Anita","anita@gmail.com","anigolo",28);
	String s1 = addCliente(c1);
	String s2 = addCliente(c2);
	String s = updateCliente(0,64,1.7);
	
	@GET
	@Produces({MediaType.APPLICATION_JSON})
	public List getClientes(){
		List<Cliente> l = new ArrayList<Cliente>();
		l.addAll(clientes.values());
		return l;
	}
	
	@GET
	@Path("{id}")
	@Produces({MediaType.APPLICATION_JSON})
	public Cliente getCliente(@PathParam("id") int id){
		return clientes.get(id);
	}
	
	@POST
	@Path("/add")
	@Consumes({MediaType.APPLICATION_JSON})
	@Produces({MediaType.TEXT_PLAIN})
	public String addCliente(Cliente c){
		
		int id = clientes.size();
		c.setId(id);
		clientes.put(id,c);
		
		return "Cliente " + id + " con nombre de usuario " + c.getUsuario() + " se agrego.";
	}
	
	@PUT
	@Path("/update/{id}")
	@Produces({MediaType.TEXT_PLAIN})
	public String updateCliente(@PathParam("id") int id, 
			@QueryParam( "peso" ) double peso, @QueryParam( "estatura" ) double estatura){
		Cliente c = clientes.get(id);
		c.setPeso(peso);
		c.setEstatura(estatura);
		clientes.put(id, c);
		return "Cliente " + id + "modificado.";
	}
}
