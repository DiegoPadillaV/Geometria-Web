package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.Circulo;
import modelo.Rectangulo;

import java.io.IOException;

public class CirculoControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public CirculoControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1) Recuperar los valores enviados desde el formulario
		String operacion   = request.getParameter("operacion");
		String diametroStr   = request.getParameter("diametro");
		
		// 2) Convertir al tipo de dato deseado
		double diametro = Double.parseDouble(diametroStr); // parseInt() es un miembro de Clase (static)
		
		// 3) Utilizar la(s) clase(s) modelo para hacer calculos o acciones
		Circulo circulo = new Circulo(diametro);
		if(operacion.equalsIgnoreCase("area")) {
			double area = circulo.calcularArea(); // calcularArea() es un miembro de Instancia
			request.setAttribute("resultado", area);
			request.setAttribute("operacion", "área");	
		}else {
			double perimetro = circulo.calcularPerimetro(); 
			request.setAttribute("resultado", perimetro);
			request.setAttribute("operacion", "perímetro");	
		}
		
		
		
		// 4) Delegar a una vista para que muestre el o los resultados
		String rutaJspArea = "/WEB-INF/jsp/view/circulo.jsp";

		// pasamos los al JSP
		
		request.getRequestDispatcher(rutaJspArea).forward(request, response);
	}

}
