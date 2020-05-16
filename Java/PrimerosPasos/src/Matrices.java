
public class Matrices {

	public static void main(String[] args) {

		//int[][] matrix = { { 0, 1 }, { 2, 3 }, { 4, 5 ,5} };
		int[][] matrix = new int[3][3];
		
		for (int fila = 0; fila < matrix.length; fila++) {
			for (int columna = 0; columna < matrix[fila].length; columna++) {
				matrix[fila][columna] = (int) (Math.random()*100);
			}
		}
		
		
		for (int fila = 0; fila < matrix.length; fila++) {
			System.out.println();
			for (int columna : matrix[fila]) {
				System.out.print(columna + " ");
			}
		}

	}

}
