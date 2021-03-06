USE [BdPetCenter]
GO
/****** Object:  Table [dbo].[Afp]    Script Date: 21/11/2017 1:46:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Afp](
	[AfpId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Aporte] [decimal](13, 3) NOT NULL,
	[Comision] [decimal](13, 3) NOT NULL,
	[Seguro] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Afp] PRIMARY KEY CLUSTERED 
(
	[AfpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistencia](
	[AsistenciaId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[FechaSalida] [datetime] NULL,
 CONSTRAINT [PK_Asistencia] PRIMARY KEY CLUSTERED 
(
	[AsistenciaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banco]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banco](
	[BancoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[BancoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Concepto]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Concepto](
	[ConceptoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Tipo] [smallint] NULL,
	[TipoConcepto] [smallint] NULL,
	[calculo1] [varchar](50) NOT NULL,
	[calculo2] [varchar](50) NULL,
	[calculo3] [varchar](50) NULL,
	[calculo4] [varchar](50) NULL,
	[calculo5] [varchar](50) NULL,
	[calculo6] [varchar](50) NULL,
	[Operador1] [varchar](50) NOT NULL,
	[Operador2] [varchar](50) NULL,
	[Operador3] [varchar](50) NULL,
	[Operador4] [varchar](50) NULL,
	[Operador5] [varchar](50) NULL,
	[Escala1] [decimal](10, 3) NOT NULL,
	[Escala2] [decimal](10, 3) NULL,
	[Escala3] [decimal](10, 3) NULL,
	[Escala4] [decimal](10, 3) NULL,
	[Escala5] [decimal](10, 3) NULL,
	[Escala6] [decimal](10, 3) NULL,
	[Porcentaje1] [decimal](10, 3) NOT NULL,
	[Porcentaje2] [decimal](10, 3) NULL,
	[Porcentaje3] [decimal](10, 3) NULL,
	[Porcentaje4] [decimal](10, 3) NULL,
	[Porcentaje5] [decimal](10, 3) NULL,
	[Porcentaje6] [decimal](10, 3) NULL,
	[Importe1] [decimal](10, 3) NOT NULL,
	[Importe2] [decimal](10, 3) NULL,
	[Importe3] [decimal](10, 3) NULL,
	[Importe4] [decimal](10, 3) NULL,
	[Importe5] [decimal](10, 3) NULL,
	[Importe6] [decimal](10, 3) NULL,
	[Aprobado] [bit] NULL,
 CONSTRAINT [PK_Concepto] PRIMARY KEY CLUSTERED 
(
	[ConceptoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contrato](
	[ContratoId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[EsAfp] [bit] NULL,
	[SueldoBase] [decimal](13, 3) NOT NULL,
	[UbigeoId] [int] NOT NULL,
	[JornadaTrabajo] [decimal](13, 3) NULL,
	[RenumeracionLetra] [varchar](400) NULL,
	[FechaInicio] [datetime] NULL,
	[FechaTermino] [datetime] NULL,
	[Estado] [nchar](10) NULL,
	[RutaArchivo] [varchar](max) NULL,
 CONSTRAINT [PK_Contrato] PRIMARY KEY CLUSTERED 
(
	[ContratoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[EmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[TipoDocumentoId] [int] NOT NULL,
	[CodigoEmpleado] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Sexo] [bit] NOT NULL,
	[Direccion] [varchar](250) NOT NULL,
	[Telefono] [varchar](30) NOT NULL,
	[Movil] [varchar](30) NOT NULL,
	[Correo] [varchar](150) NOT NULL,
	[TieneHijo] [bit] NOT NULL,
	[Documento] [varchar](50) NOT NULL,
	[Habilitado] [bit] NULL,
	[EsAfp] [bit] NULL,
	[LugarNacimiento] [varchar](150) NULL,
	[CodigoEsSalud] [varchar](50) NULL,
	[UbigeoId] [int] NULL,
	[Referencia] [varchar](250) NULL,
	[BancoId] [int] NULL,
	[TipoCuentaId] [int] NULL,
	[NumeroCuenta] [varchar](50) NULL,
	[MonedaId] [int] NULL,
	[FechaIngreso] [date] NULL,
	[CUSSP] [varchar](50) NULL,
	[FechaInicioContrato] [date] NULL,
	[FechaFinContrato] [date] NULL,
	[EstadoCivil] [smallint] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpleadoAfp]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoAfp](
	[EmpleadoAfpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[AfpId] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_EmpleadoAfp] PRIMARY KEY CLUSTERED 
(
	[EmpleadoAfpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpleadoOnp]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoOnp](
	[EmpleadoOnpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[OnpId] [int] NOT NULL,
 CONSTRAINT [PK_EmpleadoOnp] PRIMARY KEY CLUSTERED 
(
	[EmpleadoOnpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpleadoSueldoBase]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoSueldoBase](
	[EmpleadoSueldoBaseId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[SueldoBase] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_EmpleadoSueldoBase] PRIMARY KEY CLUSTERED 
(
	[EmpleadoSueldoBaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EsSalud]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EsSalud](
	[EsSaludId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Valor] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_EsSalud] PRIMARY KEY CLUSTERED 
(
	[EsSaludId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Falta]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Falta](
	[FaltaId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[JustificacionId] [int] NULL,
	[Fecha] [datetime] NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaTermino] [datetime] NULL,
	[CantidadDias] [datetime] NULL,
 CONSTRAINT [PK_Falta] PRIMARY KEY CLUSTERED 
(
	[FaltaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Justificacion]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Justificacion](
	[JustificacionId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NULL,
	[Descripcion] [varchar](500) NULL,
	[Documento] [varchar](max) NULL,
	[Estado] [bit] NOT NULL,
	[UsuarioAprueba] [int] NULL,
	[FechaAprobacion] [datetime] NULL,
	[UsuarioNiega] [int] NULL,
	[FechaNegacion] [datetime] NULL,
 CONSTRAINT [PK_Justificacion] PRIMARY KEY CLUSTERED 
(
	[JustificacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Moneda]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Moneda](
	[MonedaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Moneda] PRIMARY KEY CLUSTERED 
(
	[MonedaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Onp]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Onp](
	[OnpId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Aporte] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Onp] PRIMARY KEY CLUSTERED 
(
	[OnpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Planilla]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planilla](
	[PlanillaId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId_Aprueba] [int] NULL,
	[UitId] [int] NOT NULL,
	[SueldoMinimoId] [int] NOT NULL,
	[Aprobado] [bit] NOT NULL,
	[Pagado] [bit] NOT NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Planilla] PRIMARY KEY CLUSTERED 
(
	[PlanillaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlanillaEmpleado]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanillaEmpleado](
	[PlanillaEmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[PlanillaId] [int] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[AfpId] [int] NOT NULL,
	[OnpId] [int] NOT NULL,
	[TotalIngreso] [decimal](13, 3) NOT NULL,
	[TotalDescuento] [decimal](13, 3) NOT NULL,
	[TotalNeto] [decimal](13, 3) NOT NULL,
	[TotalAporte] [decimal](13, 3) NOT NULL,
 CONSTRAINT [PK_PlanillaEmpleado] PRIMARY KEY CLUSTERED 
(
	[PlanillaEmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlanillaEmpleadoConcepto]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanillaEmpleadoConcepto](
	[PlanillaEmpleadoConceptoId] [int] IDENTITY(1,1) NOT NULL,
	[PlanillaEmpleadoId] [int] NOT NULL,
	[ConceptoId] [int] NOT NULL,
	[Importe] [decimal](13, 3) NOT NULL,
 CONSTRAINT [PK_PlanillaEmpleadoConcepto] PRIMARY KEY CLUSTERED 
(
	[PlanillaEmpleadoConceptoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SeguroVidaLey]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SeguroVidaLey](
	[SeguroVidaLeyId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Valor] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_SeguroVidaLey] PRIMARY KEY CLUSTERED 
(
	[SeguroVidaLeyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SueldoMinimo]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SueldoMinimo](
	[SueldoMinimoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Valor] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_SueldoMinimo] PRIMARY KEY CLUSTERED 
(
	[SueldoMinimoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tardanza]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tardanza](
	[TardanzaId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[FechaTardanza] [datetime] NOT NULL,
	[Minutos] [decimal](13, 3) NULL,
 CONSTRAINT [PK_Tardanza] PRIMARY KEY CLUSTERED 
(
	[TardanzaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoCuenta]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoCuenta](
	[TipoCuentaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NULL,
 CONSTRAINT [PK_TipoCuenta] PRIMARY KEY CLUSTERED 
(
	[TipoCuentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[TipoDocumentoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[TipoDocumentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ubigeo]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ubigeo](
	[UbigeoId] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Departamento] [varchar](100) NULL,
	[Provincia] [varchar](100) NULL,
	[Distrito] [varchar](100) NULL,
 CONSTRAINT [PK_Ubigeo] PRIMARY KEY CLUSTERED 
(
	[UbigeoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Uit]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Uit](
	[UitId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Valor] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Uit] PRIMARY KEY CLUSTERED 
(
	[UitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_ConveptoDetalle]    Script Date: 21/11/2017 1:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_ConveptoDetalle]
AS
SELECT        d.Nombre AS Concepto, c.Importe
FROM            dbo.Planilla AS a INNER JOIN
                         dbo.PlanillaEmpleado AS b ON a.PlanillaId = b.PlanillaId INNER JOIN
                         dbo.PlanillaEmpleadoConcepto AS c ON b.PlanillaEmpleadoId = c.PlanillaEmpleadoId INNER JOIN
                         dbo.Concepto AS d ON c.ConceptoId = d.ConceptoId

GO
SET IDENTITY_INSERT [dbo].[Afp] ON 

INSERT [dbo].[Afp] ([AfpId], [Nombre], [Fecha], [Aporte], [Comision], [Seguro], [Estado]) VALUES (1, N'AFp1', CAST(0x0000A6CB00000000 AS DateTime), CAST(0.100 AS Decimal(13, 3)), CAST(0.021 AS Decimal(13, 3)), CAST(0.013 AS Decimal(13, 3)), 1)
INSERT [dbo].[Afp] ([AfpId], [Nombre], [Fecha], [Aporte], [Comision], [Seguro], [Estado]) VALUES (2, N'Afp2', CAST(0x0000A6BB00000000 AS DateTime), CAST(0.100 AS Decimal(13, 3)), CAST(0.100 AS Decimal(13, 3)), CAST(0.100 AS Decimal(13, 3)), 1)
SET IDENTITY_INSERT [dbo].[Afp] OFF
SET IDENTITY_INSERT [dbo].[Asistencia] ON 

INSERT [dbo].[Asistencia] ([AsistenciaId], [EmpleadoId], [Fecha], [FechaIngreso], [FechaSalida]) VALUES (1002, 1, CAST(0x793D0B00 AS Date), CAST(0x0000A81E00000000 AS DateTime), CAST(0x0000A81E00000000 AS DateTime))
INSERT [dbo].[Asistencia] ([AsistenciaId], [EmpleadoId], [Fecha], [FechaIngreso], [FechaSalida]) VALUES (1003, 1, CAST(0x793D0B00 AS Date), CAST(0x0000A81E00000000 AS DateTime), CAST(0x0000A81E00000000 AS DateTime))
INSERT [dbo].[Asistencia] ([AsistenciaId], [EmpleadoId], [Fecha], [FechaIngreso], [FechaSalida]) VALUES (1004, 1, CAST(0x7A3D0B00 AS Date), CAST(0x0000A81F00000000 AS DateTime), CAST(0x0000A81F00000000 AS DateTime))
INSERT [dbo].[Asistencia] ([AsistenciaId], [EmpleadoId], [Fecha], [FechaIngreso], [FechaSalida]) VALUES (1005, 1, CAST(0x7C3D0B00 AS Date), CAST(0x0000A82100000000 AS DateTime), CAST(0x0000A82100000000 AS DateTime))
INSERT [dbo].[Asistencia] ([AsistenciaId], [EmpleadoId], [Fecha], [FechaIngreso], [FechaSalida]) VALUES (1006, 1, CAST(0x7D3D0B00 AS Date), CAST(0x0000A82200000000 AS DateTime), CAST(0x0000A82200000000 AS DateTime))
INSERT [dbo].[Asistencia] ([AsistenciaId], [EmpleadoId], [Fecha], [FechaIngreso], [FechaSalida]) VALUES (1007, 1, CAST(0x7E3D0B00 AS Date), CAST(0x0000A82300000000 AS DateTime), CAST(0x0000A82300000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Asistencia] OFF
SET IDENTITY_INSERT [dbo].[Banco] ON 

INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (1, N'CENTRAL RESERVA DEL PERU ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (2, N'DE CREDITO DEL PERU      ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (3, N'INTERNACIONAL DEL PERU   ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (4, N'LATINO                   ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (5, N'CITIBANK DEL PERU S.A.')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (6, N'STANDARD CHARTERED')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (7, N'SCOTIABANK PERU')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (8, N'CONTINENTAL              ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (9, N'DE LIMA                  ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (10, N'MERCANTIL                ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (11, N'NACION                   ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (12, N'SANTANDER CENTRAL HISPANO')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (13, N'DE COMERCIO              ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (14, N'REPUBLICA                ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (15, N'NBK BANK                 ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (16, N'BANCOSUR')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (17, N'FINANCIERO DEL PERU      ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (18, N'DEL PROGRESO             ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (19, N'INTERAMERICANO FINANZAS  ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (20, N'BANEX                    ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (21, N'NUEVO MUNDO              ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (22, N'SUDAMERICANO             ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (23, N'DEL LIBERTADOR')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (24, N'DEL TRABAJO')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (25, N'SOLVENTA                 ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (26, N'SERBANCO SA.             ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (27, N'BANK OF BOSTON           ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (28, N'ORION                    ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (29, N'DEL PAIS                 ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (30, N'MI BANCO                 ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (31, N'BNP PARIBAS')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (32, N'HSBC BANK PERU S.A.      ')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (33, N'OTROS')
INSERT [dbo].[Banco] ([BancoId], [Nombre]) VALUES (34, NULL)
SET IDENTITY_INSERT [dbo].[Banco] OFF
SET IDENTITY_INSERT [dbo].[Concepto] ON 

INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (2, N'Descuento Faltas', 1, 0, N'TOTFAL', N'SUEBAS', N'40', N'1', N'1', N'1', N'*', N'/', N' /', N' /', N' /', CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 1)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (3, N'Descuento Tardanzas', 1, 0, N'TOTTAR', N'5', N'', N'', N'', N'', N'*', N'', N'', N'', N'', CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 1)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (4, N'Asignacion Familiar', 0, 0, N'SUEMIN', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(10.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 1)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (5, N'Aporte AFP', 1, 1, N'SUEBAS', N'APOAFP', N'', N'', N'', N'', N'*', N'', N'', N'', N'', CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 0)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (6, N'Seguro AFP', 1, 1, N'SUEBAS', N'SEGAFP', N'', N'', N'', N'', N'*', N' ', N' ', N' ', N' ', CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 0)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (7, N'Comision AFP', 1, 1, N'SUEBAS', N'COMAFP', N'', N'', N'', N'', N'*', N' ', N' ', N' ', N' ', CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 0)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (8, N'Aporte ONP', 1, 2, N'SUEBAS', N'APOONP ', N'', N'', N'', N'', N'*', N' ', N' ', N' ', N' ', CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 0)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (9, N'Renta de Quinta', 1, 0, N'12SUBA', N'', N'', N'', N'', N'', N'', N' ', N' ', N' ', N' ', CAST(19250.000 AS Decimal(10, 3)), CAST(77000.000 AS Decimal(10, 3)), CAST(134750.000 AS Decimal(10, 3)), CAST(173250.000 AS Decimal(10, 3)), CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(8.000 AS Decimal(10, 3)), CAST(14.000 AS Decimal(10, 3)), CAST(17.000 AS Decimal(10, 3)), CAST(20.000 AS Decimal(10, 3)), CAST(30.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 0)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (10, N'Aporte ESSALUD', 2, 0, N'SUEBAS', N'APOESA', N'', N'', N'', N'', N'*', N' ', N' ', N' ', N' ', CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 0)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (12, N'Seguro Vida Ley', 2, 0, N'SUEBAS', N'SEGVIL', N'', N'', N'', N'', N'*', N' ', N' ', N' ', N' ', CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 1)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (13, N'Sueldo Base', 0, 0, N'SUEBAS', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(9999999.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), 0)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (17, N'concepto', 1, 1, N'ngfkgnl', N'lsfgnsl', N'lefkgndl', N'dflgnkdskl', N'gdlnkg', N'gdlnfgd1`', N'*', N'*', N'*', N'*', N'*', CAST(1.000 AS Decimal(10, 3)), CAST(2.000 AS Decimal(10, 3)), CAST(3.000 AS Decimal(10, 3)), CAST(4.000 AS Decimal(10, 3)), CAST(5.000 AS Decimal(10, 3)), CAST(6.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(2.000 AS Decimal(10, 3)), CAST(3.000 AS Decimal(10, 3)), CAST(4.000 AS Decimal(10, 3)), CAST(5.000 AS Decimal(10, 3)), CAST(6.000 AS Decimal(10, 3)), CAST(10.000 AS Decimal(10, 3)), CAST(20.000 AS Decimal(10, 3)), CAST(30.000 AS Decimal(10, 3)), CAST(40.000 AS Decimal(10, 3)), CAST(50.000 AS Decimal(10, 3)), CAST(60.000 AS Decimal(10, 3)), NULL)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (18, N'ccc', 1, 1, N'cdwewe', N'wefwef', N'fwefew', N'fwefwe', N'fwfwe', N'ferfrerf', N'*', N'*', N'*', N'*', N'*', CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), NULL)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (19, N'prueba', 1, 1, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), NULL)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (20, N'xxa', 2, 2, N'2', N'2', N'2', N'2', N'2', N'2', N'*', N'*', N'*', N'*', N'*', CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(1.000 AS Decimal(10, 3)), CAST(2.000 AS Decimal(10, 3)), CAST(2.000 AS Decimal(10, 3)), CAST(2.000 AS Decimal(10, 3)), CAST(2.000 AS Decimal(10, 3)), CAST(2.000 AS Decimal(10, 3)), CAST(2.000 AS Decimal(10, 3)), CAST(3.000 AS Decimal(10, 3)), CAST(3.000 AS Decimal(10, 3)), CAST(3.000 AS Decimal(10, 3)), CAST(3.000 AS Decimal(10, 3)), CAST(3.000 AS Decimal(10, 3)), CAST(3.000 AS Decimal(10, 3)), NULL)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (1017, N'xxxx', 1, 1, N'1', NULL, NULL, NULL, NULL, NULL, N'*', NULL, NULL, NULL, NULL, CAST(1.000 AS Decimal(10, 3)), NULL, NULL, NULL, NULL, NULL, CAST(2.000 AS Decimal(10, 3)), NULL, NULL, NULL, NULL, NULL, CAST(21.000 AS Decimal(10, 3)), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Concepto] ([ConceptoId], [Nombre], [Tipo], [TipoConcepto], [calculo1], [calculo2], [calculo3], [calculo4], [calculo5], [calculo6], [Operador1], [Operador2], [Operador3], [Operador4], [Operador5], [Escala1], [Escala2], [Escala3], [Escala4], [Escala5], [Escala6], [Porcentaje1], [Porcentaje2], [Porcentaje3], [Porcentaje4], [Porcentaje5], [Porcentaje6], [Importe1], [Importe2], [Importe3], [Importe4], [Importe5], [Importe6], [Aprobado]) VALUES (1018, N'ASFAM', 1, 1, N'1', NULL, NULL, NULL, NULL, NULL, N'+', NULL, NULL, NULL, NULL, CAST(2.000 AS Decimal(10, 3)), NULL, NULL, NULL, NULL, NULL, CAST(1.000 AS Decimal(10, 3)), NULL, NULL, NULL, NULL, NULL, CAST(1.000 AS Decimal(10, 3)), NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Concepto] OFF
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([EmpleadoId], [TipoDocumentoId], [CodigoEmpleado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [FechaNacimiento], [Sexo], [Direccion], [Telefono], [Movil], [Correo], [TieneHijo], [Documento], [Habilitado], [EsAfp], [LugarNacimiento], [CodigoEsSalud], [UbigeoId], [Referencia], [BancoId], [TipoCuentaId], [NumeroCuenta], [MonedaId], [FechaIngreso], [CUSSP], [FechaInicioContrato], [FechaFinContrato], [EstadoCivil]) VALUES (1, 1, N'0001', N'RUIZ', N'ANDIA', N'RONNY', CAST(0x5B150B00 AS Date), 0, N'AV. AREQUIPA 666 ', N'4561234', N'999994455', N'CHIQUIBABY@GMAIL.COM', 1, N'46560233', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([EmpleadoId], [TipoDocumentoId], [CodigoEmpleado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [FechaNacimiento], [Sexo], [Direccion], [Telefono], [Movil], [Correo], [TieneHijo], [Documento], [Habilitado], [EsAfp], [LugarNacimiento], [CodigoEsSalud], [UbigeoId], [Referencia], [BancoId], [TipoCuentaId], [NumeroCuenta], [MonedaId], [FechaIngreso], [CUSSP], [FechaInicioContrato], [FechaFinContrato], [EstadoCivil]) VALUES (2, 1, N'0002', N'OCAMPO', N'HIDALGO', N'ALEXANDER', CAST(0x88140B00 AS Date), 0, N'AV. CAYLLOMA 143', N'6573434', N'999994456', N'SHARMUTA18@GMAIL.COM', 0, N'46560234', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([EmpleadoId], [TipoDocumentoId], [CodigoEmpleado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [FechaNacimiento], [Sexo], [Direccion], [Telefono], [Movil], [Correo], [TieneHijo], [Documento], [Habilitado], [EsAfp], [LugarNacimiento], [CodigoEsSalud], [UbigeoId], [Referencia], [BancoId], [TipoCuentaId], [NumeroCuenta], [MonedaId], [FechaIngreso], [CUSSP], [FechaInicioContrato], [FechaFinContrato], [EstadoCivil]) VALUES (3, 1, N'0003', N'HUAMANI', N'HUAMANI', N'GABRIELA', CAST(0x9E140B00 AS Date), 0, N'AV. CEPITA 324 ', N'3442121', N'999994457', N'PRINCESITAALEGRE@GMAIL.COM', 0, N'46560235', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([EmpleadoId], [TipoDocumentoId], [CodigoEmpleado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [FechaNacimiento], [Sexo], [Direccion], [Telefono], [Movil], [Correo], [TieneHijo], [Documento], [Habilitado], [EsAfp], [LugarNacimiento], [CodigoEsSalud], [UbigeoId], [Referencia], [BancoId], [TipoCuentaId], [NumeroCuenta], [MonedaId], [FechaIngreso], [CUSSP], [FechaInicioContrato], [FechaFinContrato], [EstadoCivil]) VALUES (5, 1, N'0004', N'VALDEZ', N'ESPINO', N'EDGAR', CAST(0x9C150B00 AS Date), 0, N'PARQUE DE LASLEYENDAS122', N'2111134', N'999994458', N'BARBIE@GMAIL.COM', 0, N'46560236', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([EmpleadoId], [TipoDocumentoId], [CodigoEmpleado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [FechaNacimiento], [Sexo], [Direccion], [Telefono], [Movil], [Correo], [TieneHijo], [Documento], [Habilitado], [EsAfp], [LugarNacimiento], [CodigoEsSalud], [UbigeoId], [Referencia], [BancoId], [TipoCuentaId], [NumeroCuenta], [MonedaId], [FechaIngreso], [CUSSP], [FechaInicioContrato], [FechaFinContrato], [EstadoCivil]) VALUES (8, 1, N'0005', N'DIAZ', N'MANTILLA', N'FRANCISCO', CAST(0x1C150B00 AS Date), 0, N'AV. BOLOGNESI 3455', N'2114544', N'999994459', N'PANCHITO@GMAIL.COM', 0, N'46560237', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([EmpleadoId], [TipoDocumentoId], [CodigoEmpleado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [FechaNacimiento], [Sexo], [Direccion], [Telefono], [Movil], [Correo], [TieneHijo], [Documento], [Habilitado], [EsAfp], [LugarNacimiento], [CodigoEsSalud], [UbigeoId], [Referencia], [BancoId], [TipoCuentaId], [NumeroCuenta], [MonedaId], [FechaIngreso], [CUSSP], [FechaInicioContrato], [FechaFinContrato], [EstadoCivil]) VALUES (10, 1, N'006', N'LINARES', N'LIVIA', N'RICARDO', CAST(0xA1050B00 AS Date), 1, N'zzz', N'1111', N'999999999', N'11111', 1, N'56161651', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([EmpleadoId], [TipoDocumentoId], [CodigoEmpleado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [FechaNacimiento], [Sexo], [Direccion], [Telefono], [Movil], [Correo], [TieneHijo], [Documento], [Habilitado], [EsAfp], [LugarNacimiento], [CodigoEsSalud], [UbigeoId], [Referencia], [BancoId], [TipoCuentaId], [NumeroCuenta], [MonedaId], [FechaIngreso], [CUSSP], [FechaInicioContrato], [FechaFinContrato], [EstadoCivil]) VALUES (11, 1, N'53323216', N'534', N'3245234', N'3453245', CAST(0x5B150B00 AS Date), 0, N'4523', N'2345245', N'234523', N'23452345', 1, N'456456', 0, 0, N'19/09/1989', N'3245', 1, N'345235', 1, 1, N'345354', 1, CAST(0x5B150B00 AS Date), N'435', CAST(0x5B150B00 AS Date), CAST(0x5B150B00 AS Date), NULL)
INSERT [dbo].[Empleado] ([EmpleadoId], [TipoDocumentoId], [CodigoEmpleado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [FechaNacimiento], [Sexo], [Direccion], [Telefono], [Movil], [Correo], [TieneHijo], [Documento], [Habilitado], [EsAfp], [LugarNacimiento], [CodigoEsSalud], [UbigeoId], [Referencia], [BancoId], [TipoCuentaId], [NumeroCuenta], [MonedaId], [FechaIngreso], [CUSSP], [FechaInicioContrato], [FechaFinContrato], [EstadoCivil]) VALUES (12, 1, N'LoGoJ216', N'Lopez', N'Gomez', N'Juan Gabriel', CAST(0x5B150B00 AS Date), 0, N'ewrwer', N'424234234', N'23423423', N'23423423', 0, N'46560233', 0, 0, N'34345', N'3424234', 1, N'werwr', 1, 1, N'5345345', 1, CAST(0x5B150B00 AS Date), N'2352', CAST(0x5B150B00 AS Date), CAST(0x5B150B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
SET IDENTITY_INSERT [dbo].[EmpleadoAfp] ON 

INSERT [dbo].[EmpleadoAfp] ([EmpleadoAfpId], [EmpleadoId], [AfpId], [Estado]) VALUES (1, 1, 1, 1)
INSERT [dbo].[EmpleadoAfp] ([EmpleadoAfpId], [EmpleadoId], [AfpId], [Estado]) VALUES (2, 2, 1, 1)
INSERT [dbo].[EmpleadoAfp] ([EmpleadoAfpId], [EmpleadoId], [AfpId], [Estado]) VALUES (3, 3, 1, 1)
INSERT [dbo].[EmpleadoAfp] ([EmpleadoAfpId], [EmpleadoId], [AfpId], [Estado]) VALUES (4, 10, 2, 0)
SET IDENTITY_INSERT [dbo].[EmpleadoAfp] OFF
SET IDENTITY_INSERT [dbo].[EmpleadoOnp] ON 

INSERT [dbo].[EmpleadoOnp] ([EmpleadoOnpId], [EmpleadoId], [OnpId]) VALUES (1, 5, 1)
INSERT [dbo].[EmpleadoOnp] ([EmpleadoOnpId], [EmpleadoId], [OnpId]) VALUES (2, 8, 1)
INSERT [dbo].[EmpleadoOnp] ([EmpleadoOnpId], [EmpleadoId], [OnpId]) VALUES (3, 10, 1)
SET IDENTITY_INSERT [dbo].[EmpleadoOnp] OFF
SET IDENTITY_INSERT [dbo].[EmpleadoSueldoBase] ON 

INSERT [dbo].[EmpleadoSueldoBase] ([EmpleadoSueldoBaseId], [EmpleadoId], [SueldoBase], [Estado]) VALUES (1, 1, CAST(1500.000 AS Decimal(13, 3)), 1)
INSERT [dbo].[EmpleadoSueldoBase] ([EmpleadoSueldoBaseId], [EmpleadoId], [SueldoBase], [Estado]) VALUES (2, 2, CAST(1700.000 AS Decimal(13, 3)), 1)
INSERT [dbo].[EmpleadoSueldoBase] ([EmpleadoSueldoBaseId], [EmpleadoId], [SueldoBase], [Estado]) VALUES (3, 3, CAST(1900.000 AS Decimal(13, 3)), 1)
INSERT [dbo].[EmpleadoSueldoBase] ([EmpleadoSueldoBaseId], [EmpleadoId], [SueldoBase], [Estado]) VALUES (4, 5, CAST(2000.000 AS Decimal(13, 3)), 1)
INSERT [dbo].[EmpleadoSueldoBase] ([EmpleadoSueldoBaseId], [EmpleadoId], [SueldoBase], [Estado]) VALUES (5, 8, CAST(10000.000 AS Decimal(13, 3)), 1)
INSERT [dbo].[EmpleadoSueldoBase] ([EmpleadoSueldoBaseId], [EmpleadoId], [SueldoBase], [Estado]) VALUES (6, 10, CAST(1000.000 AS Decimal(13, 3)), 1)
SET IDENTITY_INSERT [dbo].[EmpleadoSueldoBase] OFF
SET IDENTITY_INSERT [dbo].[EsSalud] ON 

INSERT [dbo].[EsSalud] ([EsSaludId], [Nombre], [Fecha], [Valor], [Estado]) VALUES (1, N'EsSalud', CAST(0x0000A6CC00000000 AS DateTime), CAST(0.090 AS Decimal(13, 3)), 1)
SET IDENTITY_INSERT [dbo].[EsSalud] OFF
SET IDENTITY_INSERT [dbo].[Falta] ON 

INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (1, 1, NULL, CAST(0x0000A6CB00000000 AS DateTime), CAST(0x0000A6CB00000000 AS DateTime), CAST(0x0000A6CB00000000 AS DateTime), CAST(0x0000A6CB00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (3, 1, NULL, CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (4, 2, NULL, CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (5, 3, NULL, CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (6, 3, NULL, CAST(0x0000A6CB00000000 AS DateTime), CAST(0x0000A6CB00000000 AS DateTime), CAST(0x0000A6CB00000000 AS DateTime), CAST(0x0000A6CB00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (7, 10, NULL, CAST(0x0000A6CD00000000 AS DateTime), CAST(0x0000A6CD00000000 AS DateTime), CAST(0x0000A6CD00000000 AS DateTime), CAST(0x0000A6CD00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (8, 10, NULL, CAST(0x0000A6BB00000000 AS DateTime), CAST(0x0000A6BB00000000 AS DateTime), CAST(0x0000A6BB00000000 AS DateTime), CAST(0x0000A6BB00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (9, 3, NULL, CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (10, 3, NULL, CAST(0x0000A6CB00000000 AS DateTime), CAST(0x0000A6CB00000000 AS DateTime), CAST(0x0000A6CB00000000 AS DateTime), CAST(0x0000A6CB00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (11, 10, NULL, CAST(0x0000A6CD00000000 AS DateTime), CAST(0x0000A6CD00000000 AS DateTime), CAST(0x0000A6CD00000000 AS DateTime), CAST(0x0000A6CD00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (12, 10, NULL, CAST(0x0000A6BB00000000 AS DateTime), CAST(0x0000A6BB00000000 AS DateTime), CAST(0x0000A6BB00000000 AS DateTime), CAST(0x0000A6BB00000000 AS DateTime))
INSERT [dbo].[Falta] ([FaltaId], [EmpleadoId], [JustificacionId], [Fecha], [FechaInicio], [FechaTermino], [CantidadDias]) VALUES (13, 2, 3, CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime), CAST(0x0000A6CA00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Falta] OFF
SET IDENTITY_INSERT [dbo].[Justificacion] ON 

INSERT [dbo].[Justificacion] ([JustificacionId], [EmpleadoId], [Descripcion], [Documento], [Estado], [UsuarioAprueba], [FechaAprobacion], [UsuarioNiega], [FechaNegacion]) VALUES (3, 2, N'3423423', N'D:\Ronny Jair Ruiz Andia\Downloads\PetCenter 05122016 V2\PetCenter\PetCenter.Presentation.MVC\Temp\Justificacion_ID_2', 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Justificacion] OFF
SET IDENTITY_INSERT [dbo].[Moneda] ON 

INSERT [dbo].[Moneda] ([MonedaId], [Nombre]) VALUES (1, N'NUEVOS SOLES')
INSERT [dbo].[Moneda] ([MonedaId], [Nombre]) VALUES (2, N'DÓLARES AMERICANOS')
INSERT [dbo].[Moneda] ([MonedaId], [Nombre]) VALUES (3, N'OTRA MONEDA (ESPECIFICAR)')
SET IDENTITY_INSERT [dbo].[Moneda] OFF
SET IDENTITY_INSERT [dbo].[Onp] ON 

INSERT [dbo].[Onp] ([OnpId], [Nombre], [Fecha], [Aporte], [Estado]) VALUES (1, N'ONP', CAST(0x0000A6CB00000000 AS DateTime), CAST(0.130 AS Decimal(13, 3)), 1)
SET IDENTITY_INSERT [dbo].[Onp] OFF
SET IDENTITY_INSERT [dbo].[Planilla] ON 

INSERT [dbo].[Planilla] ([PlanillaId], [EmpleadoId_Aprueba], [UitId], [SueldoMinimoId], [Aprobado], [Pagado], [Fecha]) VALUES (35, NULL, 1, 1, 1, 0, CAST(0xF93A0B00 AS Date))
INSERT [dbo].[Planilla] ([PlanillaId], [EmpleadoId_Aprueba], [UitId], [SueldoMinimoId], [Aprobado], [Pagado], [Fecha]) VALUES (1046, NULL, 1, 1, 0, 0, CAST(0x783D0B00 AS Date))
INSERT [dbo].[Planilla] ([PlanillaId], [EmpleadoId_Aprueba], [UitId], [SueldoMinimoId], [Aprobado], [Pagado], [Fecha]) VALUES (1049, NULL, 1, 1, 0, 0, CAST(0x673C0B00 AS Date))
INSERT [dbo].[Planilla] ([PlanillaId], [EmpleadoId_Aprueba], [UitId], [SueldoMinimoId], [Aprobado], [Pagado], [Fecha]) VALUES (2048, NULL, 1, 1, 0, 0, CAST(0x963D0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Planilla] OFF
SET IDENTITY_INSERT [dbo].[PlanillaEmpleado] ON 

INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (127, 35, 1, 1, 1, CAST(1585.000 AS Decimal(13, 3)), CAST(301.000 AS Decimal(13, 3)), CAST(1284.000 AS Decimal(13, 3)), CAST(151.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (128, 35, 2, 1, 1, CAST(1785.000 AS Decimal(13, 3)), CAST(284.466 AS Decimal(13, 3)), CAST(1500.533 AS Decimal(13, 3)), CAST(171.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (129, 35, 3, 1, 1, CAST(1985.000 AS Decimal(13, 3)), CAST(381.266 AS Decimal(13, 3)), CAST(1603.733 AS Decimal(13, 3)), CAST(191.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (130, 35, 5, 1, 1, CAST(2085.000 AS Decimal(13, 3)), CAST(7.000 AS Decimal(13, 3)), CAST(2078.000 AS Decimal(13, 3)), CAST(202.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (131, 35, 10, 1, 1, CAST(1085.000 AS Decimal(13, 3)), CAST(66.666 AS Decimal(13, 3)), CAST(1018.333 AS Decimal(13, 3)), CAST(101.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (1182, 1046, 1, 1, 1, CAST(1585.000 AS Decimal(13, 3)), CAST(276.000 AS Decimal(13, 3)), CAST(1309.000 AS Decimal(13, 3)), CAST(151.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (1183, 1046, 2, 1, 1, CAST(1785.000 AS Decimal(13, 3)), CAST(270.300 AS Decimal(13, 3)), CAST(1514.700 AS Decimal(13, 3)), CAST(171.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (1184, 1046, 3, 1, 1, CAST(1985.000 AS Decimal(13, 3)), CAST(349.600 AS Decimal(13, 3)), CAST(1635.400 AS Decimal(13, 3)), CAST(191.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (1185, 1046, 5, 1, 1, CAST(2085.000 AS Decimal(13, 3)), CAST(7.000 AS Decimal(13, 3)), CAST(2078.000 AS Decimal(13, 3)), CAST(202.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (1186, 1046, 10, 1, 1, CAST(1085.000 AS Decimal(13, 3)), CAST(50.000 AS Decimal(13, 3)), CAST(1035.000 AS Decimal(13, 3)), CAST(101.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (1197, 1049, 1, 1, 1, CAST(1585.000 AS Decimal(13, 3)), CAST(287.000 AS Decimal(13, 3)), CAST(1298.000 AS Decimal(13, 3)), CAST(151.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (1198, 1049, 2, 1, 1, CAST(1785.000 AS Decimal(13, 3)), CAST(281.300 AS Decimal(13, 3)), CAST(1503.700 AS Decimal(13, 3)), CAST(171.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (1199, 1049, 3, 1, 1, CAST(1985.000 AS Decimal(13, 3)), CAST(360.600 AS Decimal(13, 3)), CAST(1624.400 AS Decimal(13, 3)), CAST(191.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (1200, 1049, 5, 1, 1, CAST(2085.000 AS Decimal(13, 3)), CAST(7.000 AS Decimal(13, 3)), CAST(2078.000 AS Decimal(13, 3)), CAST(202.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (1201, 1049, 10, 1, 1, CAST(1085.000 AS Decimal(13, 3)), CAST(50.000 AS Decimal(13, 3)), CAST(1035.000 AS Decimal(13, 3)), CAST(101.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (2192, 2048, 1, 1, 1, CAST(1585.000 AS Decimal(13, 3)), CAST(314.010 AS Decimal(13, 3)), CAST(1270.990 AS Decimal(13, 3)), CAST(151.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (2193, 2048, 2, 1, 1, CAST(1785.000 AS Decimal(13, 3)), CAST(308.310 AS Decimal(13, 3)), CAST(1476.690 AS Decimal(13, 3)), CAST(171.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (2194, 2048, 3, 1, 1, CAST(1985.000 AS Decimal(13, 3)), CAST(387.610 AS Decimal(13, 3)), CAST(1597.390 AS Decimal(13, 3)), CAST(191.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (2195, 2048, 5, 1, 1, CAST(2085.000 AS Decimal(13, 3)), CAST(7.000 AS Decimal(13, 3)), CAST(2078.000 AS Decimal(13, 3)), CAST(220.020 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId], [PlanillaId], [EmpleadoId], [AfpId], [OnpId], [TotalIngreso], [TotalDescuento], [TotalNeto], [TotalAporte]) VALUES (2196, 2048, 10, 1, 1, CAST(1085.000 AS Decimal(13, 3)), CAST(50.000 AS Decimal(13, 3)), CAST(1035.000 AS Decimal(13, 3)), CAST(119.020 AS Decimal(13, 3)))
SET IDENTITY_INSERT [dbo].[PlanillaEmpleado] OFF
SET IDENTITY_INSERT [dbo].[PlanillaEmpleadoConcepto] ON 

INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1149, 127, 2, CAST(100.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1150, 127, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1151, 127, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1152, 127, 5, CAST(150.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1153, 127, 6, CAST(19.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1154, 127, 7, CAST(31.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1155, 127, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1156, 127, 10, CAST(135.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1157, 127, 12, CAST(16.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1158, 127, 13, CAST(1500.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1159, 128, 2, CAST(56.666 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1160, 128, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1161, 128, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1162, 128, 5, CAST(170.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1163, 128, 6, CAST(22.100 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1164, 128, 7, CAST(35.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1165, 128, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1166, 128, 10, CAST(153.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1167, 128, 12, CAST(18.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1168, 128, 13, CAST(1700.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1169, 129, 2, CAST(126.666 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1170, 129, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1171, 129, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1172, 129, 5, CAST(190.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1173, 129, 6, CAST(24.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1174, 129, 7, CAST(39.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1175, 129, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1176, 129, 10, CAST(171.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1177, 129, 12, CAST(20.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1178, 129, 13, CAST(1900.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1179, 130, 2, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1180, 130, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1181, 130, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1182, 130, 8, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1183, 130, 9, CAST(7.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1184, 130, 10, CAST(180.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1185, 130, 12, CAST(22.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1186, 130, 13, CAST(2000.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1187, 131, 2, CAST(66.666 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1188, 131, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1189, 131, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1190, 131, 8, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1191, 131, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1192, 131, 10, CAST(90.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1193, 131, 12, CAST(11.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (1194, 131, 13, CAST(1000.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2655, 1182, 2, CAST(75.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2656, 1182, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2657, 1182, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2658, 1182, 5, CAST(150.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2659, 1182, 6, CAST(19.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2660, 1182, 7, CAST(31.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2661, 1182, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2662, 1182, 10, CAST(135.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2663, 1182, 12, CAST(16.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2664, 1182, 13, CAST(1500.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2665, 1183, 2, CAST(42.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2666, 1183, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2667, 1183, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2668, 1183, 5, CAST(170.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2669, 1183, 6, CAST(22.100 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2670, 1183, 7, CAST(35.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2671, 1183, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2672, 1183, 10, CAST(153.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2673, 1183, 12, CAST(18.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2674, 1183, 13, CAST(1700.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2675, 1184, 2, CAST(95.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2676, 1184, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2677, 1184, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2678, 1184, 5, CAST(190.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2679, 1184, 6, CAST(24.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2680, 1184, 7, CAST(39.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2681, 1184, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2682, 1184, 10, CAST(171.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2683, 1184, 12, CAST(20.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2684, 1184, 13, CAST(1900.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2685, 1185, 2, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2686, 1185, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2687, 1185, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2688, 1185, 8, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2689, 1185, 9, CAST(7.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2690, 1185, 10, CAST(180.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2691, 1185, 12, CAST(22.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2692, 1185, 13, CAST(2000.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2693, 1186, 2, CAST(50.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2694, 1186, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2695, 1186, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2696, 1186, 8, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2697, 1186, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2698, 1186, 10, CAST(90.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2699, 1186, 12, CAST(11.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2700, 1186, 13, CAST(1000.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2802, 1197, 2, CAST(75.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2803, 1197, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2804, 1197, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2805, 1197, 5, CAST(150.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2806, 1197, 6, CAST(19.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2807, 1197, 7, CAST(31.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2808, 1197, 9, CAST(0.000 AS Decimal(13, 3)))
GO
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2809, 1197, 10, CAST(135.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2810, 1197, 12, CAST(16.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2811, 1197, 13, CAST(1500.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2812, 1197, 17, CAST(10.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2813, 1197, 18, CAST(1.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2814, 1198, 2, CAST(42.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2815, 1198, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2816, 1198, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2817, 1198, 5, CAST(170.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2818, 1198, 6, CAST(22.100 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2819, 1198, 7, CAST(35.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2820, 1198, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2821, 1198, 10, CAST(153.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2822, 1198, 12, CAST(18.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2823, 1198, 13, CAST(1700.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2824, 1198, 17, CAST(10.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2825, 1198, 18, CAST(1.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2826, 1199, 2, CAST(95.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2827, 1199, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2828, 1199, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2829, 1199, 5, CAST(190.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2830, 1199, 6, CAST(24.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2831, 1199, 7, CAST(39.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2832, 1199, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2833, 1199, 10, CAST(171.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2834, 1199, 12, CAST(20.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2835, 1199, 13, CAST(1900.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2836, 1199, 17, CAST(10.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2837, 1199, 18, CAST(1.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2838, 1200, 2, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2839, 1200, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2840, 1200, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2841, 1200, 8, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2842, 1200, 9, CAST(7.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2843, 1200, 10, CAST(180.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2844, 1200, 12, CAST(22.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2845, 1200, 13, CAST(2000.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2846, 1201, 2, CAST(50.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2847, 1201, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2848, 1201, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2849, 1201, 8, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2850, 1201, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2851, 1201, 10, CAST(90.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2852, 1201, 12, CAST(11.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (2853, 1201, 13, CAST(1000.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3772, 2192, 2, CAST(75.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3773, 2192, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3774, 2192, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3775, 2192, 5, CAST(150.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3776, 2192, 6, CAST(19.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3777, 2192, 7, CAST(31.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3778, 2192, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3779, 2192, 10, CAST(135.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3780, 2192, 12, CAST(16.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3781, 2192, 13, CAST(1500.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3782, 2192, 17, CAST(10.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3783, 2192, 18, CAST(1.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3784, 2192, 19, CAST(6.010 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3785, 2192, 1017, CAST(21.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3786, 2193, 2, CAST(42.500 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3787, 2193, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3788, 2193, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3789, 2193, 5, CAST(170.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3790, 2193, 6, CAST(22.100 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3791, 2193, 7, CAST(35.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3792, 2193, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3793, 2193, 10, CAST(153.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3794, 2193, 12, CAST(18.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3795, 2193, 13, CAST(1700.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3796, 2193, 17, CAST(10.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3797, 2193, 18, CAST(1.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3798, 2193, 19, CAST(6.010 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3799, 2193, 1017, CAST(21.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3800, 2194, 2, CAST(95.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3801, 2194, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3802, 2194, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3803, 2194, 5, CAST(190.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3804, 2194, 6, CAST(24.700 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3805, 2194, 7, CAST(39.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3806, 2194, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3807, 2194, 10, CAST(171.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3808, 2194, 12, CAST(20.900 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3809, 2194, 13, CAST(1900.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3810, 2194, 17, CAST(10.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3811, 2194, 18, CAST(1.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3812, 2194, 19, CAST(6.010 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3813, 2194, 1017, CAST(21.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3814, 2195, 2, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3815, 2195, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3816, 2195, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3817, 2195, 8, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3818, 2195, 9, CAST(7.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3819, 2195, 10, CAST(180.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3820, 2195, 12, CAST(22.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3821, 2195, 13, CAST(2000.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3822, 2195, 20, CAST(18.020 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3823, 2196, 2, CAST(50.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3824, 2196, 3, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3825, 2196, 4, CAST(85.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3826, 2196, 8, CAST(0.000 AS Decimal(13, 3)))
GO
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3827, 2196, 9, CAST(0.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3828, 2196, 10, CAST(90.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3829, 2196, 12, CAST(11.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3830, 2196, 13, CAST(1000.000 AS Decimal(13, 3)))
INSERT [dbo].[PlanillaEmpleadoConcepto] ([PlanillaEmpleadoConceptoId], [PlanillaEmpleadoId], [ConceptoId], [Importe]) VALUES (3831, 2196, 20, CAST(18.020 AS Decimal(13, 3)))
SET IDENTITY_INSERT [dbo].[PlanillaEmpleadoConcepto] OFF
SET IDENTITY_INSERT [dbo].[SeguroVidaLey] ON 

INSERT [dbo].[SeguroVidaLey] ([SeguroVidaLeyId], [Nombre], [Fecha], [Valor], [Estado]) VALUES (1, N'Seguro Vida Ley', CAST(0x0000A6CC00000000 AS DateTime), CAST(0.011 AS Decimal(13, 3)), 1)
SET IDENTITY_INSERT [dbo].[SeguroVidaLey] OFF
SET IDENTITY_INSERT [dbo].[SueldoMinimo] ON 

INSERT [dbo].[SueldoMinimo] ([SueldoMinimoId], [Nombre], [Valor], [Estado]) VALUES (1, N'Sueldo Minimo', CAST(850.000 AS Decimal(13, 3)), 1)
SET IDENTITY_INSERT [dbo].[SueldoMinimo] OFF
SET IDENTITY_INSERT [dbo].[Tardanza] ON 

INSERT [dbo].[Tardanza] ([TardanzaId], [EmpleadoId], [FechaTardanza], [Minutos]) VALUES (1, 10, CAST(0x0000A6CD00000000 AS DateTime), CAST(50.000 AS Decimal(13, 3)))
INSERT [dbo].[Tardanza] ([TardanzaId], [EmpleadoId], [FechaTardanza], [Minutos]) VALUES (2, 10, CAST(0x0000A6CE00000000 AS DateTime), CAST(10.000 AS Decimal(13, 3)))
SET IDENTITY_INSERT [dbo].[Tardanza] OFF
SET IDENTITY_INSERT [dbo].[TipoCuenta] ON 

INSERT [dbo].[TipoCuenta] ([TipoCuentaId], [Nombre]) VALUES (1, N'Cuenta de cheques')
INSERT [dbo].[TipoCuenta] ([TipoCuentaId], [Nombre]) VALUES (2, N'Cuenta de ahorros')
INSERT [dbo].[TipoCuenta] ([TipoCuentaId], [Nombre]) VALUES (3, N'Certificado de depósito')
INSERT [dbo].[TipoCuenta] ([TipoCuentaId], [Nombre]) VALUES (4, N'Cuenta de mercado monetario')
INSERT [dbo].[TipoCuenta] ([TipoCuentaId], [Nombre]) VALUES (5, N'Cuentas de jubilación individual')
SET IDENTITY_INSERT [dbo].[TipoCuenta] OFF
SET IDENTITY_INSERT [dbo].[TipoDocumento] ON 

INSERT [dbo].[TipoDocumento] ([TipoDocumentoId], [Nombre], [Estado]) VALUES (1, N'DNI', 1)
INSERT [dbo].[TipoDocumento] ([TipoDocumentoId], [Nombre], [Estado]) VALUES (2, N'PASSAPORTE', 1)
INSERT [dbo].[TipoDocumento] ([TipoDocumentoId], [Nombre], [Estado]) VALUES (3, N'CARNETEXTRA', 1)
INSERT [dbo].[TipoDocumento] ([TipoDocumentoId], [Nombre], [Estado]) VALUES (4, N'RUC', 1)
SET IDENTITY_INSERT [dbo].[TipoDocumento] OFF
SET IDENTITY_INSERT [dbo].[Ubigeo] ON 

INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1, N'010000', N'Amazonas', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2, N'010100', N'Amazonas', N'Chachapoyas', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (3, N'010101', N'Amazonas', N'Chachapoyas', N'Chachapoyas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (4, N'010102', N'Amazonas', N'Chachapoyas', N'Asunción')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (5, N'010103', N'Amazonas', N'Chachapoyas', N'Balsas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (6, N'010104', N'Amazonas', N'Chachapoyas', N'Cheto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (7, N'010105', N'Amazonas', N'Chachapoyas', N'Chiliquin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (8, N'010106', N'Amazonas', N'Chachapoyas', N'Chuquibamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (9, N'010107', N'Amazonas', N'Chachapoyas', N'Granada')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (10, N'010108', N'Amazonas', N'Chachapoyas', N'Huancas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (11, N'010109', N'Amazonas', N'Chachapoyas', N'La Jalca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (12, N'010110', N'Amazonas', N'Chachapoyas', N'Leimebamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (13, N'010111', N'Amazonas', N'Chachapoyas', N'Levanto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (14, N'010112', N'Amazonas', N'Chachapoyas', N'Magdalena')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (15, N'010113', N'Amazonas', N'Chachapoyas', N'Mariscal Castilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (16, N'010114', N'Amazonas', N'Chachapoyas', N'Molinopampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (17, N'010115', N'Amazonas', N'Chachapoyas', N'Montevideo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (18, N'010116', N'Amazonas', N'Chachapoyas', N'Olleros')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (19, N'010117', N'Amazonas', N'Chachapoyas', N'Quinjalca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (20, N'010118', N'Amazonas', N'Chachapoyas', N'San Francisco de Daguas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (21, N'010119', N'Amazonas', N'Chachapoyas', N'San Isidro de Maino')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (22, N'010120', N'Amazonas', N'Chachapoyas', N'Soloco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (23, N'010121', N'Amazonas', N'Chachapoyas', N'Sonche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (24, N'010200', N'Amazonas', N'Bagua', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (25, N'010201', N'Amazonas', N'Bagua', N'Bagua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (26, N'010202', N'Amazonas', N'Bagua', N'Aramango')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (27, N'010203', N'Amazonas', N'Bagua', N'Copallin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (28, N'010204', N'Amazonas', N'Bagua', N'El Parco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (29, N'010205', N'Amazonas', N'Bagua', N'Imaza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (30, N'010206', N'Amazonas', N'Bagua', N'La Peca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (31, N'010300', N'Amazonas', N'Bongará', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (32, N'010301', N'Amazonas', N'Bongará', N'Jumbilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (33, N'010302', N'Amazonas', N'Bongará', N'Chisquilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (34, N'010303', N'Amazonas', N'Bongará', N'Churuja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (35, N'010304', N'Amazonas', N'Bongará', N'Corosha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (36, N'010305', N'Amazonas', N'Bongará', N'Cuispes')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (37, N'010306', N'Amazonas', N'Bongará', N'Florida')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (38, N'010307', N'Amazonas', N'Bongará', N'Jazan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (39, N'010308', N'Amazonas', N'Bongará', N'Recta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (40, N'010309', N'Amazonas', N'Bongará', N'San Carlos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (41, N'010310', N'Amazonas', N'Bongará', N'Shipasbamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (42, N'010311', N'Amazonas', N'Bongará', N'Valera')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (43, N'010312', N'Amazonas', N'Bongará', N'Yambrasbamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (44, N'010400', N'Amazonas', N'Condorcanqui', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (45, N'010401', N'Amazonas', N'Condorcanqui', N'Nieva')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (46, N'010402', N'Amazonas', N'Condorcanqui', N'El Cenepa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (47, N'010403', N'Amazonas', N'Condorcanqui', N'Río Santiago')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (48, N'010500', N'Amazonas', N'Luya', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (49, N'010501', N'Amazonas', N'Luya', N'Lamud')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (50, N'010502', N'Amazonas', N'Luya', N'Camporredondo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (51, N'010503', N'Amazonas', N'Luya', N'Cocabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (52, N'010504', N'Amazonas', N'Luya', N'Colcamar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (53, N'010505', N'Amazonas', N'Luya', N'Conila')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (54, N'010506', N'Amazonas', N'Luya', N'Inguilpata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (55, N'010507', N'Amazonas', N'Luya', N'Longuita')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (56, N'010508', N'Amazonas', N'Luya', N'Lonya Chico')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (57, N'010509', N'Amazonas', N'Luya', N'Luya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (58, N'010510', N'Amazonas', N'Luya', N'Luya Viejo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (59, N'010511', N'Amazonas', N'Luya', N'María')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (60, N'010512', N'Amazonas', N'Luya', N'Ocalli')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (61, N'010513', N'Amazonas', N'Luya', N'Ocumal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (62, N'010514', N'Amazonas', N'Luya', N'Pisuquia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (63, N'010515', N'Amazonas', N'Luya', N'Providencia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (64, N'010516', N'Amazonas', N'Luya', N'San Cristóbal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (65, N'010517', N'Amazonas', N'Luya', N'San Francisco de Yeso')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (66, N'010518', N'Amazonas', N'Luya', N'San Jerónimo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (67, N'010519', N'Amazonas', N'Luya', N'San Juan de Lopecancha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (68, N'010520', N'Amazonas', N'Luya', N'Santa Catalina')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (69, N'010521', N'Amazonas', N'Luya', N'Santo Tomas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (70, N'010522', N'Amazonas', N'Luya', N'Tingo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (71, N'010523', N'Amazonas', N'Luya', N'Trita')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (72, N'010600', N'Amazonas', N'Rodríguez de Mendoza', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (73, N'010601', N'Amazonas', N'Rodríguez de Mendoza', N'San Nicolás')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (74, N'010602', N'Amazonas', N'Rodríguez de Mendoza', N'Chirimoto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (75, N'010603', N'Amazonas', N'Rodríguez de Mendoza', N'Cochamal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (76, N'010604', N'Amazonas', N'Rodríguez de Mendoza', N'Huambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (77, N'010605', N'Amazonas', N'Rodríguez de Mendoza', N'Limabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (78, N'010606', N'Amazonas', N'Rodríguez de Mendoza', N'Longar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (79, N'010607', N'Amazonas', N'Rodríguez de Mendoza', N'Mariscal Benavides')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (80, N'010608', N'Amazonas', N'Rodríguez de Mendoza', N'Milpuc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (81, N'010609', N'Amazonas', N'Rodríguez de Mendoza', N'Omia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (82, N'010610', N'Amazonas', N'Rodríguez de Mendoza', N'Santa Rosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (83, N'010611', N'Amazonas', N'Rodríguez de Mendoza', N'Totora')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (84, N'010612', N'Amazonas', N'Rodríguez de Mendoza', N'Vista Alegre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (85, N'010700', N'Amazonas', N'Utcubamba', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (86, N'010701', N'Amazonas', N'Utcubamba', N'Bagua Grande')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (87, N'010702', N'Amazonas', N'Utcubamba', N'Cajaruro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (88, N'010703', N'Amazonas', N'Utcubamba', N'Cumba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (89, N'010704', N'Amazonas', N'Utcubamba', N'El Milagro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (90, N'010705', N'Amazonas', N'Utcubamba', N'Jamalca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (91, N'010706', N'Amazonas', N'Utcubamba', N'Lonya Grande')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (92, N'010707', N'Amazonas', N'Utcubamba', N'Yamon')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (93, N'020000', N'Áncash', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (94, N'020100', N'Áncash', N'Huaraz', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (95, N'020101', N'Áncash', N'Huaraz', N'Huaraz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (96, N'020102', N'Áncash', N'Huaraz', N'Cochabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (97, N'020103', N'Áncash', N'Huaraz', N'Colcabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (98, N'020104', N'Áncash', N'Huaraz', N'Huanchay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (99, N'020105', N'Áncash', N'Huaraz', N'Independencia')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (100, N'020106', N'Áncash', N'Huaraz', N'Jangas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (101, N'020107', N'Áncash', N'Huaraz', N'La Libertad')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (102, N'020108', N'Áncash', N'Huaraz', N'Olleros')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (103, N'020109', N'Áncash', N'Huaraz', N'Pampas Grande')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (104, N'020110', N'Áncash', N'Huaraz', N'Pariacoto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (105, N'020111', N'Áncash', N'Huaraz', N'Pira')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (106, N'020112', N'Áncash', N'Huaraz', N'Tarica')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (107, N'020200', N'Áncash', N'Aija', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (108, N'020201', N'Áncash', N'Aija', N'Aija')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (109, N'020202', N'Áncash', N'Aija', N'Coris')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (110, N'020203', N'Áncash', N'Aija', N'Huacllan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (111, N'020204', N'Áncash', N'Aija', N'La Merced')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (112, N'020205', N'Áncash', N'Aija', N'Succha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (113, N'020300', N'Áncash', N'Antonio Raymondi', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (114, N'020301', N'Áncash', N'Antonio Raymondi', N'Llamellin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (115, N'020302', N'Áncash', N'Antonio Raymondi', N'Aczo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (116, N'020303', N'Áncash', N'Antonio Raymondi', N'Chaccho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (117, N'020304', N'Áncash', N'Antonio Raymondi', N'Chingas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (118, N'020305', N'Áncash', N'Antonio Raymondi', N'Mirgas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (119, N'020306', N'Áncash', N'Antonio Raymondi', N'San Juan de Rontoy')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (120, N'020400', N'Áncash', N'Asunción', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (121, N'020401', N'Áncash', N'Asunción', N'Chacas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (122, N'020402', N'Áncash', N'Asunción', N'Acochaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (123, N'020500', N'Áncash', N'Bolognesi', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (124, N'020501', N'Áncash', N'Bolognesi', N'Chiquian')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (125, N'020502', N'Áncash', N'Bolognesi', N'Abelardo Pardo Lezameta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (126, N'020503', N'Áncash', N'Bolognesi', N'Antonio Raymondi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (127, N'020504', N'Áncash', N'Bolognesi', N'Aquia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (128, N'020505', N'Áncash', N'Bolognesi', N'Cajacay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (129, N'020506', N'Áncash', N'Bolognesi', N'Canis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (130, N'020507', N'Áncash', N'Bolognesi', N'Colquioc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (131, N'020508', N'Áncash', N'Bolognesi', N'Huallanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (132, N'020509', N'Áncash', N'Bolognesi', N'Huasta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (133, N'020510', N'Áncash', N'Bolognesi', N'Huayllacayan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (134, N'020511', N'Áncash', N'Bolognesi', N'La Primavera')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (135, N'020512', N'Áncash', N'Bolognesi', N'Mangas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (136, N'020513', N'Áncash', N'Bolognesi', N'Pacllon')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (137, N'020514', N'Áncash', N'Bolognesi', N'San Miguel de Corpanqui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (138, N'020515', N'Áncash', N'Bolognesi', N'Ticllos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (139, N'020600', N'Áncash', N'Carhuaz', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (140, N'020601', N'Áncash', N'Carhuaz', N'Carhuaz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (141, N'020602', N'Áncash', N'Carhuaz', N'Acopampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (142, N'020603', N'Áncash', N'Carhuaz', N'Amashca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (143, N'020604', N'Áncash', N'Carhuaz', N'Anta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (144, N'020605', N'Áncash', N'Carhuaz', N'Ataquero')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (145, N'020606', N'Áncash', N'Carhuaz', N'Marcara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (146, N'020607', N'Áncash', N'Carhuaz', N'Pariahuanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (147, N'020608', N'Áncash', N'Carhuaz', N'San Miguel de Aco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (148, N'020609', N'Áncash', N'Carhuaz', N'Shilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (149, N'020610', N'Áncash', N'Carhuaz', N'Tinco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (150, N'020611', N'Áncash', N'Carhuaz', N'Yungar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (151, N'020700', N'Áncash', N'Carlos Fermín Fitzcarrald', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (152, N'020701', N'Áncash', N'Carlos Fermín Fitzcarrald', N'San Luis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (153, N'020702', N'Áncash', N'Carlos Fermín Fitzcarrald', N'San Nicolás')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (154, N'020703', N'Áncash', N'Carlos Fermín Fitzcarrald', N'Yauya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (155, N'020800', N'Áncash', N'Casma', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (156, N'020801', N'Áncash', N'Casma', N'Casma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (157, N'020802', N'Áncash', N'Casma', N'Buena Vista Alta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (158, N'020803', N'Áncash', N'Casma', N'Comandante Noel')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (159, N'020804', N'Áncash', N'Casma', N'Yautan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (160, N'020900', N'Áncash', N'Corongo', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (161, N'020901', N'Áncash', N'Corongo', N'Corongo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (162, N'020902', N'Áncash', N'Corongo', N'Aco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (163, N'020903', N'Áncash', N'Corongo', N'Bambas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (164, N'020904', N'Áncash', N'Corongo', N'Cusca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (165, N'020905', N'Áncash', N'Corongo', N'La Pampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (166, N'020906', N'Áncash', N'Corongo', N'Yanac')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (167, N'020907', N'Áncash', N'Corongo', N'Yupan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (168, N'021000', N'Áncash', N'Huari', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (169, N'021001', N'Áncash', N'Huari', N'Huari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (170, N'021002', N'Áncash', N'Huari', N'Anra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (171, N'021003', N'Áncash', N'Huari', N'Cajay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (172, N'021004', N'Áncash', N'Huari', N'Chavin de Huantar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (173, N'021005', N'Áncash', N'Huari', N'Huacachi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (174, N'021006', N'Áncash', N'Huari', N'Huacchis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (175, N'021007', N'Áncash', N'Huari', N'Huachis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (176, N'021008', N'Áncash', N'Huari', N'Huantar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (177, N'021009', N'Áncash', N'Huari', N'Masin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (178, N'021010', N'Áncash', N'Huari', N'Paucas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (179, N'021011', N'Áncash', N'Huari', N'Ponto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (180, N'021012', N'Áncash', N'Huari', N'Rahuapampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (181, N'021013', N'Áncash', N'Huari', N'Rapayan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (182, N'021014', N'Áncash', N'Huari', N'San Marcos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (183, N'021015', N'Áncash', N'Huari', N'San Pedro de Chana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (184, N'021016', N'Áncash', N'Huari', N'Uco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (185, N'021100', N'Áncash', N'Huarmey', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (186, N'021101', N'Áncash', N'Huarmey', N'Huarmey')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (187, N'021102', N'Áncash', N'Huarmey', N'Cochapeti')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (188, N'021103', N'Áncash', N'Huarmey', N'Culebras')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (189, N'021104', N'Áncash', N'Huarmey', N'Huayan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (190, N'021105', N'Áncash', N'Huarmey', N'Malvas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (191, N'021200', N'Áncash', N'Huaylas', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (192, N'021201', N'Áncash', N'Huaylas', N'Caraz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (193, N'021202', N'Áncash', N'Huaylas', N'Huallanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (194, N'021203', N'Áncash', N'Huaylas', N'Huata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (195, N'021204', N'Áncash', N'Huaylas', N'Huaylas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (196, N'021205', N'Áncash', N'Huaylas', N'Mato')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (197, N'021206', N'Áncash', N'Huaylas', N'Pamparomas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (198, N'021207', N'Áncash', N'Huaylas', N'Pueblo Libre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (199, N'021208', N'Áncash', N'Huaylas', N'Santa Cruz')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (200, N'021209', N'Áncash', N'Huaylas', N'Santo Toribio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (201, N'021210', N'Áncash', N'Huaylas', N'Yuracmarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (202, N'021300', N'Áncash', N'Mariscal Luzuriaga', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (203, N'021301', N'Áncash', N'Mariscal Luzuriaga', N'Piscobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (204, N'021302', N'Áncash', N'Mariscal Luzuriaga', N'Casca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (205, N'021303', N'Áncash', N'Mariscal Luzuriaga', N'Eleazar Guzmán Barron')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (206, N'021304', N'Áncash', N'Mariscal Luzuriaga', N'Fidel Olivas Escudero')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (207, N'021305', N'Áncash', N'Mariscal Luzuriaga', N'Llama')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (208, N'021306', N'Áncash', N'Mariscal Luzuriaga', N'Llumpa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (209, N'021307', N'Áncash', N'Mariscal Luzuriaga', N'Lucma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (210, N'021308', N'Áncash', N'Mariscal Luzuriaga', N'Musga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (211, N'021400', N'Áncash', N'Ocros', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (212, N'021401', N'Áncash', N'Ocros', N'Ocros')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (213, N'021402', N'Áncash', N'Ocros', N'Acas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (214, N'021403', N'Áncash', N'Ocros', N'Cajamarquilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (215, N'021404', N'Áncash', N'Ocros', N'Carhuapampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (216, N'021405', N'Áncash', N'Ocros', N'Cochas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (217, N'021406', N'Áncash', N'Ocros', N'Congas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (218, N'021407', N'Áncash', N'Ocros', N'Llipa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (219, N'021408', N'Áncash', N'Ocros', N'San Cristóbal de Rajan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (220, N'021409', N'Áncash', N'Ocros', N'San Pedro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (221, N'021410', N'Áncash', N'Ocros', N'Santiago de Chilcas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (222, N'021500', N'Áncash', N'Pallasca', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (223, N'021501', N'Áncash', N'Pallasca', N'Cabana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (224, N'021502', N'Áncash', N'Pallasca', N'Bolognesi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (225, N'021503', N'Áncash', N'Pallasca', N'Conchucos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (226, N'021504', N'Áncash', N'Pallasca', N'Huacaschuque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (227, N'021505', N'Áncash', N'Pallasca', N'Huandoval')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (228, N'021506', N'Áncash', N'Pallasca', N'Lacabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (229, N'021507', N'Áncash', N'Pallasca', N'Llapo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (230, N'021508', N'Áncash', N'Pallasca', N'Pallasca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (231, N'021509', N'Áncash', N'Pallasca', N'Pampas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (232, N'021510', N'Áncash', N'Pallasca', N'Santa Rosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (233, N'021511', N'Áncash', N'Pallasca', N'Tauca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (234, N'021600', N'Áncash', N'Pomabamba', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (235, N'021601', N'Áncash', N'Pomabamba', N'Pomabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (236, N'021602', N'Áncash', N'Pomabamba', N'Huayllan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (237, N'021603', N'Áncash', N'Pomabamba', N'Parobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (238, N'021604', N'Áncash', N'Pomabamba', N'Quinuabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (239, N'021700', N'Áncash', N'Recuay', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (240, N'021701', N'Áncash', N'Recuay', N'Recuay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (241, N'021702', N'Áncash', N'Recuay', N'Catac')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (242, N'021703', N'Áncash', N'Recuay', N'Cotaparaco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (243, N'021704', N'Áncash', N'Recuay', N'Huayllapampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (244, N'021705', N'Áncash', N'Recuay', N'Llacllin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (245, N'021706', N'Áncash', N'Recuay', N'Marca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (246, N'021707', N'Áncash', N'Recuay', N'Pampas Chico')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (247, N'021708', N'Áncash', N'Recuay', N'Pararin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (248, N'021709', N'Áncash', N'Recuay', N'Tapacocha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (249, N'021710', N'Áncash', N'Recuay', N'Ticapampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (250, N'021800', N'Áncash', N'Santa', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (251, N'021801', N'Áncash', N'Santa', N'Chimbote')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (252, N'021802', N'Áncash', N'Santa', N'Cáceres del Perú')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (253, N'021803', N'Áncash', N'Santa', N'Coishco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (254, N'021804', N'Áncash', N'Santa', N'Macate')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (255, N'021805', N'Áncash', N'Santa', N'Moro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (256, N'021806', N'Áncash', N'Santa', N'Nepeña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (257, N'021807', N'Áncash', N'Santa', N'Samanco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (258, N'021808', N'Áncash', N'Santa', N'Santa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (259, N'021809', N'Áncash', N'Santa', N'Nuevo Chimbote')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (260, N'021900', N'Áncash', N'Sihuas', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (261, N'021901', N'Áncash', N'Sihuas', N'Sihuas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (262, N'021902', N'Áncash', N'Sihuas', N'Acobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (263, N'021903', N'Áncash', N'Sihuas', N'Alfonso Ugarte')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (264, N'021904', N'Áncash', N'Sihuas', N'Cashapampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (265, N'021905', N'Áncash', N'Sihuas', N'Chingalpo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (266, N'021906', N'Áncash', N'Sihuas', N'Huayllabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (267, N'021907', N'Áncash', N'Sihuas', N'Quiches')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (268, N'021908', N'Áncash', N'Sihuas', N'Ragash')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (269, N'021909', N'Áncash', N'Sihuas', N'San Juan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (270, N'021910', N'Áncash', N'Sihuas', N'Sicsibamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (271, N'022000', N'Áncash', N'Yungay', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (272, N'022001', N'Áncash', N'Yungay', N'Yungay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (273, N'022002', N'Áncash', N'Yungay', N'Cascapara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (274, N'022003', N'Áncash', N'Yungay', N'Mancos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (275, N'022004', N'Áncash', N'Yungay', N'Matacoto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (276, N'022005', N'Áncash', N'Yungay', N'Quillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (277, N'022006', N'Áncash', N'Yungay', N'Ranrahirca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (278, N'022007', N'Áncash', N'Yungay', N'Shupluy')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (279, N'022008', N'Áncash', N'Yungay', N'Yanama')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (280, N'030000', N'Apurímac', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (281, N'030100', N'Apurímac', N'Abancay', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (282, N'030101', N'Apurímac', N'Abancay', N'Abancay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (283, N'030102', N'Apurímac', N'Abancay', N'Chacoche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (284, N'030103', N'Apurímac', N'Abancay', N'Circa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (285, N'030104', N'Apurímac', N'Abancay', N'Curahuasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (286, N'030105', N'Apurímac', N'Abancay', N'Huanipaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (287, N'030106', N'Apurímac', N'Abancay', N'Lambrama')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (288, N'030107', N'Apurímac', N'Abancay', N'Pichirhua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (289, N'030108', N'Apurímac', N'Abancay', N'San Pedro de Cachora')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (290, N'030109', N'Apurímac', N'Abancay', N'Tamburco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (291, N'030200', N'Apurímac', N'Andahuaylas', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (292, N'030201', N'Apurímac', N'Andahuaylas', N'Andahuaylas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (293, N'030202', N'Apurímac', N'Andahuaylas', N'Andarapa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (294, N'030203', N'Apurímac', N'Andahuaylas', N'Chiara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (295, N'030204', N'Apurímac', N'Andahuaylas', N'Huancarama')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (296, N'030205', N'Apurímac', N'Andahuaylas', N'Huancaray')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (297, N'030206', N'Apurímac', N'Andahuaylas', N'Huayana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (298, N'030207', N'Apurímac', N'Andahuaylas', N'Kishuara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (299, N'030208', N'Apurímac', N'Andahuaylas', N'Pacobamba')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (300, N'030209', N'Apurímac', N'Andahuaylas', N'Pacucha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (301, N'030210', N'Apurímac', N'Andahuaylas', N'Pampachiri')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (302, N'030211', N'Apurímac', N'Andahuaylas', N'Pomacocha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (303, N'030212', N'Apurímac', N'Andahuaylas', N'San Antonio de Cachi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (304, N'030213', N'Apurímac', N'Andahuaylas', N'San Jerónimo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (305, N'030214', N'Apurímac', N'Andahuaylas', N'San Miguel de Chaccrampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (306, N'030215', N'Apurímac', N'Andahuaylas', N'Santa María de Chicmo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (307, N'030216', N'Apurímac', N'Andahuaylas', N'Talavera')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (308, N'030217', N'Apurímac', N'Andahuaylas', N'Tumay Huaraca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (309, N'030218', N'Apurímac', N'Andahuaylas', N'Turpo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (310, N'030219', N'Apurímac', N'Andahuaylas', N'Kaquiabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (311, N'030220', N'Apurímac', N'Andahuaylas', N'José María Arguedas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (312, N'030300', N'Apurímac', N'Antabamba', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (313, N'030301', N'Apurímac', N'Antabamba', N'Antabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (314, N'030302', N'Apurímac', N'Antabamba', N'El Oro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (315, N'030303', N'Apurímac', N'Antabamba', N'Huaquirca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (316, N'030304', N'Apurímac', N'Antabamba', N'Juan Espinoza Medrano')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (317, N'030305', N'Apurímac', N'Antabamba', N'Oropesa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (318, N'030306', N'Apurímac', N'Antabamba', N'Pachaconas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (319, N'030307', N'Apurímac', N'Antabamba', N'Sabaino')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (320, N'030400', N'Apurímac', N'Aymaraes', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (321, N'030401', N'Apurímac', N'Aymaraes', N'Chalhuanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (322, N'030402', N'Apurímac', N'Aymaraes', N'Capaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (323, N'030403', N'Apurímac', N'Aymaraes', N'Caraybamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (324, N'030404', N'Apurímac', N'Aymaraes', N'Chapimarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (325, N'030405', N'Apurímac', N'Aymaraes', N'Colcabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (326, N'030406', N'Apurímac', N'Aymaraes', N'Cotaruse')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (327, N'030407', N'Apurímac', N'Aymaraes', N'Huayllo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (328, N'030408', N'Apurímac', N'Aymaraes', N'Justo Apu Sahuaraura')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (329, N'030409', N'Apurímac', N'Aymaraes', N'Lucre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (330, N'030410', N'Apurímac', N'Aymaraes', N'Pocohuanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (331, N'030411', N'Apurímac', N'Aymaraes', N'San Juan de Chacña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (332, N'030412', N'Apurímac', N'Aymaraes', N'Sañayca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (333, N'030413', N'Apurímac', N'Aymaraes', N'Soraya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (334, N'030414', N'Apurímac', N'Aymaraes', N'Tapairihua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (335, N'030415', N'Apurímac', N'Aymaraes', N'Tintay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (336, N'030416', N'Apurímac', N'Aymaraes', N'Toraya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (337, N'030417', N'Apurímac', N'Aymaraes', N'Yanaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (338, N'030500', N'Apurímac', N'Cotabambas', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (339, N'030501', N'Apurímac', N'Cotabambas', N'Tambobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (340, N'030502', N'Apurímac', N'Cotabambas', N'Cotabambas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (341, N'030503', N'Apurímac', N'Cotabambas', N'Coyllurqui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (342, N'030504', N'Apurímac', N'Cotabambas', N'Haquira')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (343, N'030505', N'Apurímac', N'Cotabambas', N'Mara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (344, N'030506', N'Apurímac', N'Cotabambas', N'Challhuahuacho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (345, N'030600', N'Apurímac', N'Chincheros', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (346, N'030601', N'Apurímac', N'Chincheros', N'Chincheros')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (347, N'030602', N'Apurímac', N'Chincheros', N'Anco_Huallo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (348, N'030603', N'Apurímac', N'Chincheros', N'Cocharcas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (349, N'030604', N'Apurímac', N'Chincheros', N'Huaccana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (350, N'030605', N'Apurímac', N'Chincheros', N'Ocobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (351, N'030606', N'Apurímac', N'Chincheros', N'Ongoy')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (352, N'030607', N'Apurímac', N'Chincheros', N'Uranmarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (353, N'030608', N'Apurímac', N'Chincheros', N'Ranracancha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (354, N'030700', N'Apurímac', N'Grau', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (355, N'030701', N'Apurímac', N'Grau', N'Chuquibambilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (356, N'030702', N'Apurímac', N'Grau', N'Curpahuasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (357, N'030703', N'Apurímac', N'Grau', N'Gamarra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (358, N'030704', N'Apurímac', N'Grau', N'Huayllati')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (359, N'030705', N'Apurímac', N'Grau', N'Mamara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (360, N'030706', N'Apurímac', N'Grau', N'Micaela Bastidas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (361, N'030707', N'Apurímac', N'Grau', N'Pataypampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (362, N'030708', N'Apurímac', N'Grau', N'Progreso')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (363, N'030709', N'Apurímac', N'Grau', N'San Antonio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (364, N'030710', N'Apurímac', N'Grau', N'Santa Rosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (365, N'030711', N'Apurímac', N'Grau', N'Turpay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (366, N'030712', N'Apurímac', N'Grau', N'Vilcabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (367, N'030713', N'Apurímac', N'Grau', N'Virundo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (368, N'030714', N'Apurímac', N'Grau', N'Curasco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (369, N'040000', N'Arequipa', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (370, N'040100', N'Arequipa', N'Arequipa', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (371, N'040101', N'Arequipa', N'Arequipa', N'Arequipa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (372, N'040102', N'Arequipa', N'Arequipa', N'Alto Selva Alegre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (373, N'040103', N'Arequipa', N'Arequipa', N'Cayma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (374, N'040104', N'Arequipa', N'Arequipa', N'Cerro Colorado')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (375, N'040105', N'Arequipa', N'Arequipa', N'Characato')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (376, N'040106', N'Arequipa', N'Arequipa', N'Chiguata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (377, N'040107', N'Arequipa', N'Arequipa', N'Jacobo Hunter')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (378, N'040108', N'Arequipa', N'Arequipa', N'La Joya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (379, N'040109', N'Arequipa', N'Arequipa', N'Mariano Melgar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (380, N'040110', N'Arequipa', N'Arequipa', N'Miraflores')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (381, N'040111', N'Arequipa', N'Arequipa', N'Mollebaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (382, N'040112', N'Arequipa', N'Arequipa', N'Paucarpata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (383, N'040113', N'Arequipa', N'Arequipa', N'Pocsi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (384, N'040114', N'Arequipa', N'Arequipa', N'Polobaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (385, N'040115', N'Arequipa', N'Arequipa', N'Quequeña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (386, N'040116', N'Arequipa', N'Arequipa', N'Sabandia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (387, N'040117', N'Arequipa', N'Arequipa', N'Sachaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (388, N'040118', N'Arequipa', N'Arequipa', N'San Juan de Siguas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (389, N'040119', N'Arequipa', N'Arequipa', N'San Juan de Tarucani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (390, N'040120', N'Arequipa', N'Arequipa', N'Santa Isabel de Siguas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (391, N'040121', N'Arequipa', N'Arequipa', N'Santa Rita de Siguas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (392, N'040122', N'Arequipa', N'Arequipa', N'Socabaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (393, N'040123', N'Arequipa', N'Arequipa', N'Tiabaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (394, N'040124', N'Arequipa', N'Arequipa', N'Uchumayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (395, N'040125', N'Arequipa', N'Arequipa', N'Vitor')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (396, N'040126', N'Arequipa', N'Arequipa', N'Yanahuara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (397, N'040127', N'Arequipa', N'Arequipa', N'Yarabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (398, N'040128', N'Arequipa', N'Arequipa', N'Yura')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (399, N'040129', N'Arequipa', N'Arequipa', N'José Luis Bustamante Y Rivero')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (400, N'040200', N'Arequipa', N'Camaná', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (401, N'040201', N'Arequipa', N'Camaná', N'Camaná')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (402, N'040202', N'Arequipa', N'Camaná', N'José María Quimper')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (403, N'040203', N'Arequipa', N'Camaná', N'Mariano Nicolás Valcárcel')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (404, N'040204', N'Arequipa', N'Camaná', N'Mariscal Cáceres')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (405, N'040205', N'Arequipa', N'Camaná', N'Nicolás de Pierola')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (406, N'040206', N'Arequipa', N'Camaná', N'Ocoña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (407, N'040207', N'Arequipa', N'Camaná', N'Quilca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (408, N'040208', N'Arequipa', N'Camaná', N'Samuel Pastor')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (409, N'040300', N'Arequipa', N'Caravelí', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (410, N'040301', N'Arequipa', N'Caravelí', N'Caravelí')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (411, N'040302', N'Arequipa', N'Caravelí', N'Acarí')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (412, N'040303', N'Arequipa', N'Caravelí', N'Atico')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (413, N'040304', N'Arequipa', N'Caravelí', N'Atiquipa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (414, N'040305', N'Arequipa', N'Caravelí', N'Bella Unión')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (415, N'040306', N'Arequipa', N'Caravelí', N'Cahuacho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (416, N'040307', N'Arequipa', N'Caravelí', N'Chala')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (417, N'040308', N'Arequipa', N'Caravelí', N'Chaparra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (418, N'040309', N'Arequipa', N'Caravelí', N'Huanuhuanu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (419, N'040310', N'Arequipa', N'Caravelí', N'Jaqui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (420, N'040311', N'Arequipa', N'Caravelí', N'Lomas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (421, N'040312', N'Arequipa', N'Caravelí', N'Quicacha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (422, N'040313', N'Arequipa', N'Caravelí', N'Yauca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (423, N'040400', N'Arequipa', N'Castilla', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (424, N'040401', N'Arequipa', N'Castilla', N'Aplao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (425, N'040402', N'Arequipa', N'Castilla', N'Andagua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (426, N'040403', N'Arequipa', N'Castilla', N'Ayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (427, N'040404', N'Arequipa', N'Castilla', N'Chachas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (428, N'040405', N'Arequipa', N'Castilla', N'Chilcaymarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (429, N'040406', N'Arequipa', N'Castilla', N'Choco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (430, N'040407', N'Arequipa', N'Castilla', N'Huancarqui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (431, N'040408', N'Arequipa', N'Castilla', N'Machaguay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (432, N'040409', N'Arequipa', N'Castilla', N'Orcopampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (433, N'040410', N'Arequipa', N'Castilla', N'Pampacolca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (434, N'040411', N'Arequipa', N'Castilla', N'Tipan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (435, N'040412', N'Arequipa', N'Castilla', N'Uñon')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (436, N'040413', N'Arequipa', N'Castilla', N'Uraca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (437, N'040414', N'Arequipa', N'Castilla', N'Viraco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (438, N'040500', N'Arequipa', N'Caylloma', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (439, N'040501', N'Arequipa', N'Caylloma', N'Chivay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (440, N'040502', N'Arequipa', N'Caylloma', N'Achoma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (441, N'040503', N'Arequipa', N'Caylloma', N'Cabanaconde')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (442, N'040504', N'Arequipa', N'Caylloma', N'Callalli')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (443, N'040505', N'Arequipa', N'Caylloma', N'Caylloma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (444, N'040506', N'Arequipa', N'Caylloma', N'Coporaque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (445, N'040507', N'Arequipa', N'Caylloma', N'Huambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (446, N'040508', N'Arequipa', N'Caylloma', N'Huanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (447, N'040509', N'Arequipa', N'Caylloma', N'Ichupampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (448, N'040510', N'Arequipa', N'Caylloma', N'Lari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (449, N'040511', N'Arequipa', N'Caylloma', N'Lluta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (450, N'040512', N'Arequipa', N'Caylloma', N'Maca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (451, N'040513', N'Arequipa', N'Caylloma', N'Madrigal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (452, N'040514', N'Arequipa', N'Caylloma', N'San Antonio de Chuca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (453, N'040515', N'Arequipa', N'Caylloma', N'Sibayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (454, N'040516', N'Arequipa', N'Caylloma', N'Tapay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (455, N'040517', N'Arequipa', N'Caylloma', N'Tisco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (456, N'040518', N'Arequipa', N'Caylloma', N'Tuti')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (457, N'040519', N'Arequipa', N'Caylloma', N'Yanque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (458, N'040520', N'Arequipa', N'Caylloma', N'Majes')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (459, N'040600', N'Arequipa', N'Condesuyos', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (460, N'040601', N'Arequipa', N'Condesuyos', N'Chuquibamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (461, N'040602', N'Arequipa', N'Condesuyos', N'Andaray')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (462, N'040603', N'Arequipa', N'Condesuyos', N'Cayarani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (463, N'040604', N'Arequipa', N'Condesuyos', N'Chichas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (464, N'040605', N'Arequipa', N'Condesuyos', N'Iray')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (465, N'040606', N'Arequipa', N'Condesuyos', N'Río Grande')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (466, N'040607', N'Arequipa', N'Condesuyos', N'Salamanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (467, N'040608', N'Arequipa', N'Condesuyos', N'Yanaquihua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (468, N'040700', N'Arequipa', N'Islay', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (469, N'040701', N'Arequipa', N'Islay', N'Mollendo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (470, N'040702', N'Arequipa', N'Islay', N'Cocachacra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (471, N'040703', N'Arequipa', N'Islay', N'Dean Valdivia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (472, N'040704', N'Arequipa', N'Islay', N'Islay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (473, N'040705', N'Arequipa', N'Islay', N'Mejia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (474, N'040706', N'Arequipa', N'Islay', N'Punta de Bombón')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (475, N'040800', N'Arequipa', N'La Uniòn', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (476, N'040801', N'Arequipa', N'La Uniòn', N'Cotahuasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (477, N'040802', N'Arequipa', N'La Uniòn', N'Alca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (478, N'040803', N'Arequipa', N'La Uniòn', N'Charcana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (479, N'040804', N'Arequipa', N'La Uniòn', N'Huaynacotas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (480, N'040805', N'Arequipa', N'La Uniòn', N'Pampamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (481, N'040806', N'Arequipa', N'La Uniòn', N'Puyca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (482, N'040807', N'Arequipa', N'La Uniòn', N'Quechualla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (483, N'040808', N'Arequipa', N'La Uniòn', N'Sayla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (484, N'040809', N'Arequipa', N'La Uniòn', N'Tauria')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (485, N'040810', N'Arequipa', N'La Uniòn', N'Tomepampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (486, N'040811', N'Arequipa', N'La Uniòn', N'Toro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (487, N'050000', N'Ayacucho', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (488, N'050100', N'Ayacucho', N'Huamanga', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (489, N'050101', N'Ayacucho', N'Huamanga', N'Ayacucho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (490, N'050102', N'Ayacucho', N'Huamanga', N'Acocro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (491, N'050103', N'Ayacucho', N'Huamanga', N'Acos Vinchos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (492, N'050104', N'Ayacucho', N'Huamanga', N'Carmen Alto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (493, N'050105', N'Ayacucho', N'Huamanga', N'Chiara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (494, N'050106', N'Ayacucho', N'Huamanga', N'Ocros')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (495, N'050107', N'Ayacucho', N'Huamanga', N'Pacaycasa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (496, N'050108', N'Ayacucho', N'Huamanga', N'Quinua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (497, N'050109', N'Ayacucho', N'Huamanga', N'San José de Ticllas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (498, N'050110', N'Ayacucho', N'Huamanga', N'San Juan Bautista')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (499, N'050111', N'Ayacucho', N'Huamanga', N'Santiago de Pischa')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (500, N'050112', N'Ayacucho', N'Huamanga', N'Socos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (501, N'050113', N'Ayacucho', N'Huamanga', N'Tambillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (502, N'050114', N'Ayacucho', N'Huamanga', N'Vinchos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (503, N'050115', N'Ayacucho', N'Huamanga', N'Jesús Nazareno')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (504, N'050116', N'Ayacucho', N'Huamanga', N'Andrés Avelino Cáceres Dorregaray')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (505, N'050200', N'Ayacucho', N'Cangallo', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (506, N'050201', N'Ayacucho', N'Cangallo', N'Cangallo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (507, N'050202', N'Ayacucho', N'Cangallo', N'Chuschi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (508, N'050203', N'Ayacucho', N'Cangallo', N'Los Morochucos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (509, N'050204', N'Ayacucho', N'Cangallo', N'María Parado de Bellido')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (510, N'050205', N'Ayacucho', N'Cangallo', N'Paras')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (511, N'050206', N'Ayacucho', N'Cangallo', N'Totos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (512, N'050300', N'Ayacucho', N'Huanca Sancos', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (513, N'050301', N'Ayacucho', N'Huanca Sancos', N'Sancos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (514, N'050302', N'Ayacucho', N'Huanca Sancos', N'Carapo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (515, N'050303', N'Ayacucho', N'Huanca Sancos', N'Sacsamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (516, N'050304', N'Ayacucho', N'Huanca Sancos', N'Santiago de Lucanamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (517, N'050400', N'Ayacucho', N'Huanta', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (518, N'050401', N'Ayacucho', N'Huanta', N'Huanta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (519, N'050402', N'Ayacucho', N'Huanta', N'Ayahuanco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (520, N'050403', N'Ayacucho', N'Huanta', N'Huamanguilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (521, N'050404', N'Ayacucho', N'Huanta', N'Iguain')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (522, N'050405', N'Ayacucho', N'Huanta', N'Luricocha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (523, N'050406', N'Ayacucho', N'Huanta', N'Santillana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (524, N'050407', N'Ayacucho', N'Huanta', N'Sivia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (525, N'050408', N'Ayacucho', N'Huanta', N'Llochegua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (526, N'050409', N'Ayacucho', N'Huanta', N'Canayre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (527, N'050410', N'Ayacucho', N'Huanta', N'Uchuraccay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (528, N'050411', N'Ayacucho', N'Huanta', N'Pucacolpa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (529, N'050500', N'Ayacucho', N'La Mar', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (530, N'050501', N'Ayacucho', N'La Mar', N'San Miguel')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (531, N'050502', N'Ayacucho', N'La Mar', N'Anco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (532, N'050503', N'Ayacucho', N'La Mar', N'Ayna')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (533, N'050504', N'Ayacucho', N'La Mar', N'Chilcas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (534, N'050505', N'Ayacucho', N'La Mar', N'Chungui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (535, N'050506', N'Ayacucho', N'La Mar', N'Luis Carranza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (536, N'050507', N'Ayacucho', N'La Mar', N'Santa Rosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (537, N'050508', N'Ayacucho', N'La Mar', N'Tambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (538, N'050509', N'Ayacucho', N'La Mar', N'Samugari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (539, N'050510', N'Ayacucho', N'La Mar', N'Anchihuay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (540, N'050600', N'Ayacucho', N'Lucanas', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (541, N'050601', N'Ayacucho', N'Lucanas', N'Puquio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (542, N'050602', N'Ayacucho', N'Lucanas', N'Aucara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (543, N'050603', N'Ayacucho', N'Lucanas', N'Cabana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (544, N'050604', N'Ayacucho', N'Lucanas', N'Carmen Salcedo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (545, N'050605', N'Ayacucho', N'Lucanas', N'Chaviña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (546, N'050606', N'Ayacucho', N'Lucanas', N'Chipao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (547, N'050607', N'Ayacucho', N'Lucanas', N'Huac-Huas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (548, N'050608', N'Ayacucho', N'Lucanas', N'Laramate')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (549, N'050609', N'Ayacucho', N'Lucanas', N'Leoncio Prado')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (550, N'050610', N'Ayacucho', N'Lucanas', N'Llauta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (551, N'050611', N'Ayacucho', N'Lucanas', N'Lucanas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (552, N'050612', N'Ayacucho', N'Lucanas', N'Ocaña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (553, N'050613', N'Ayacucho', N'Lucanas', N'Otoca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (554, N'050614', N'Ayacucho', N'Lucanas', N'Saisa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (555, N'050615', N'Ayacucho', N'Lucanas', N'San Cristóbal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (556, N'050616', N'Ayacucho', N'Lucanas', N'San Juan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (557, N'050617', N'Ayacucho', N'Lucanas', N'San Pedro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (558, N'050618', N'Ayacucho', N'Lucanas', N'San Pedro de Palco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (559, N'050619', N'Ayacucho', N'Lucanas', N'Sancos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (560, N'050620', N'Ayacucho', N'Lucanas', N'Santa Ana de Huaycahuacho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (561, N'050621', N'Ayacucho', N'Lucanas', N'Santa Lucia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (562, N'050700', N'Ayacucho', N'Parinacochas', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (563, N'050701', N'Ayacucho', N'Parinacochas', N'Coracora')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (564, N'050702', N'Ayacucho', N'Parinacochas', N'Chumpi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (565, N'050703', N'Ayacucho', N'Parinacochas', N'Coronel Castañeda')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (566, N'050704', N'Ayacucho', N'Parinacochas', N'Pacapausa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (567, N'050705', N'Ayacucho', N'Parinacochas', N'Pullo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (568, N'050706', N'Ayacucho', N'Parinacochas', N'Puyusca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (569, N'050707', N'Ayacucho', N'Parinacochas', N'San Francisco de Ravacayco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (570, N'050708', N'Ayacucho', N'Parinacochas', N'Upahuacho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (571, N'050800', N'Ayacucho', N'Pàucar del Sara Sara', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (572, N'050801', N'Ayacucho', N'Pàucar del Sara Sara', N'Pausa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (573, N'050802', N'Ayacucho', N'Pàucar del Sara Sara', N'Colta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (574, N'050803', N'Ayacucho', N'Pàucar del Sara Sara', N'Corculla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (575, N'050804', N'Ayacucho', N'Pàucar del Sara Sara', N'Lampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (576, N'050805', N'Ayacucho', N'Pàucar del Sara Sara', N'Marcabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (577, N'050806', N'Ayacucho', N'Pàucar del Sara Sara', N'Oyolo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (578, N'050807', N'Ayacucho', N'Pàucar del Sara Sara', N'Pararca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (579, N'050808', N'Ayacucho', N'Pàucar del Sara Sara', N'San Javier de Alpabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (580, N'050809', N'Ayacucho', N'Pàucar del Sara Sara', N'San José de Ushua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (581, N'050810', N'Ayacucho', N'Pàucar del Sara Sara', N'Sara Sara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (582, N'050900', N'Ayacucho', N'Sucre', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (583, N'050901', N'Ayacucho', N'Sucre', N'Querobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (584, N'050902', N'Ayacucho', N'Sucre', N'Belén')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (585, N'050903', N'Ayacucho', N'Sucre', N'Chalcos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (586, N'050904', N'Ayacucho', N'Sucre', N'Chilcayoc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (587, N'050905', N'Ayacucho', N'Sucre', N'Huacaña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (588, N'050906', N'Ayacucho', N'Sucre', N'Morcolla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (589, N'050907', N'Ayacucho', N'Sucre', N'Paico')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (590, N'050908', N'Ayacucho', N'Sucre', N'San Pedro de Larcay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (591, N'050909', N'Ayacucho', N'Sucre', N'San Salvador de Quije')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (592, N'050910', N'Ayacucho', N'Sucre', N'Santiago de Paucaray')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (593, N'050911', N'Ayacucho', N'Sucre', N'Soras')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (594, N'051000', N'Ayacucho', N'Víctor Fajardo', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (595, N'051001', N'Ayacucho', N'Víctor Fajardo', N'Huancapi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (596, N'051002', N'Ayacucho', N'Víctor Fajardo', N'Alcamenca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (597, N'051003', N'Ayacucho', N'Víctor Fajardo', N'Apongo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (598, N'051004', N'Ayacucho', N'Víctor Fajardo', N'Asquipata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (599, N'051005', N'Ayacucho', N'Víctor Fajardo', N'Canaria')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (600, N'051006', N'Ayacucho', N'Víctor Fajardo', N'Cayara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (601, N'051007', N'Ayacucho', N'Víctor Fajardo', N'Colca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (602, N'051008', N'Ayacucho', N'Víctor Fajardo', N'Huamanquiquia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (603, N'051009', N'Ayacucho', N'Víctor Fajardo', N'Huancaraylla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (604, N'051010', N'Ayacucho', N'Víctor Fajardo', N'Huaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (605, N'051011', N'Ayacucho', N'Víctor Fajardo', N'Sarhua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (606, N'051012', N'Ayacucho', N'Víctor Fajardo', N'Vilcanchos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (607, N'051100', N'Ayacucho', N'Vilcas Huamán', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (608, N'051101', N'Ayacucho', N'Vilcas Huamán', N'Vilcas Huaman')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (609, N'051102', N'Ayacucho', N'Vilcas Huamán', N'Accomarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (610, N'051103', N'Ayacucho', N'Vilcas Huamán', N'Carhuanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (611, N'051104', N'Ayacucho', N'Vilcas Huamán', N'Concepción')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (612, N'051105', N'Ayacucho', N'Vilcas Huamán', N'Huambalpa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (613, N'051106', N'Ayacucho', N'Vilcas Huamán', N'Independencia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (614, N'051107', N'Ayacucho', N'Vilcas Huamán', N'Saurama')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (615, N'051108', N'Ayacucho', N'Vilcas Huamán', N'Vischongo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (616, N'060000', N'Cajamarca', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (617, N'060100', N'Cajamarca', N'Cajamarca', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (618, N'060101', N'Cajamarca', N'Cajamarca', N'Cajamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (619, N'060102', N'Cajamarca', N'Cajamarca', N'Asunción')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (620, N'060103', N'Cajamarca', N'Cajamarca', N'Chetilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (621, N'060104', N'Cajamarca', N'Cajamarca', N'Cospan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (622, N'060105', N'Cajamarca', N'Cajamarca', N'Encañada')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (623, N'060106', N'Cajamarca', N'Cajamarca', N'Jesús')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (624, N'060107', N'Cajamarca', N'Cajamarca', N'Llacanora')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (625, N'060108', N'Cajamarca', N'Cajamarca', N'Los Baños del Inca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (626, N'060109', N'Cajamarca', N'Cajamarca', N'Magdalena')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (627, N'060110', N'Cajamarca', N'Cajamarca', N'Matara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (628, N'060111', N'Cajamarca', N'Cajamarca', N'Namora')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (629, N'060112', N'Cajamarca', N'Cajamarca', N'San Juan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (630, N'060200', N'Cajamarca', N'Cajabamba', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (631, N'060201', N'Cajamarca', N'Cajabamba', N'Cajabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (632, N'060202', N'Cajamarca', N'Cajabamba', N'Cachachi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (633, N'060203', N'Cajamarca', N'Cajabamba', N'Condebamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (634, N'060204', N'Cajamarca', N'Cajabamba', N'Sitacocha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (635, N'060300', N'Cajamarca', N'Celendín', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (636, N'060301', N'Cajamarca', N'Celendín', N'Celendín')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (637, N'060302', N'Cajamarca', N'Celendín', N'Chumuch')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (638, N'060303', N'Cajamarca', N'Celendín', N'Cortegana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (639, N'060304', N'Cajamarca', N'Celendín', N'Huasmin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (640, N'060305', N'Cajamarca', N'Celendín', N'Jorge Chávez')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (641, N'060306', N'Cajamarca', N'Celendín', N'José Gálvez')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (642, N'060307', N'Cajamarca', N'Celendín', N'Miguel Iglesias')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (643, N'060308', N'Cajamarca', N'Celendín', N'Oxamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (644, N'060309', N'Cajamarca', N'Celendín', N'Sorochuco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (645, N'060310', N'Cajamarca', N'Celendín', N'Sucre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (646, N'060311', N'Cajamarca', N'Celendín', N'Utco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (647, N'060312', N'Cajamarca', N'Celendín', N'La Libertad de Pallan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (648, N'060400', N'Cajamarca', N'Chota', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (649, N'060401', N'Cajamarca', N'Chota', N'Chota')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (650, N'060402', N'Cajamarca', N'Chota', N'Anguia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (651, N'060403', N'Cajamarca', N'Chota', N'Chadin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (652, N'060404', N'Cajamarca', N'Chota', N'Chiguirip')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (653, N'060405', N'Cajamarca', N'Chota', N'Chimban')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (654, N'060406', N'Cajamarca', N'Chota', N'Choropampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (655, N'060407', N'Cajamarca', N'Chota', N'Cochabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (656, N'060408', N'Cajamarca', N'Chota', N'Conchan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (657, N'060409', N'Cajamarca', N'Chota', N'Huambos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (658, N'060410', N'Cajamarca', N'Chota', N'Lajas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (659, N'060411', N'Cajamarca', N'Chota', N'Llama')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (660, N'060412', N'Cajamarca', N'Chota', N'Miracosta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (661, N'060413', N'Cajamarca', N'Chota', N'Paccha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (662, N'060414', N'Cajamarca', N'Chota', N'Pion')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (663, N'060415', N'Cajamarca', N'Chota', N'Querocoto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (664, N'060416', N'Cajamarca', N'Chota', N'San Juan de Licupis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (665, N'060417', N'Cajamarca', N'Chota', N'Tacabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (666, N'060418', N'Cajamarca', N'Chota', N'Tocmoche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (667, N'060419', N'Cajamarca', N'Chota', N'Chalamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (668, N'060500', N'Cajamarca', N'Contumazá', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (669, N'060501', N'Cajamarca', N'Contumazá', N'Contumaza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (670, N'060502', N'Cajamarca', N'Contumazá', N'Chilete')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (671, N'060503', N'Cajamarca', N'Contumazá', N'Cupisnique')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (672, N'060504', N'Cajamarca', N'Contumazá', N'Guzmango')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (673, N'060505', N'Cajamarca', N'Contumazá', N'San Benito')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (674, N'060506', N'Cajamarca', N'Contumazá', N'Santa Cruz de Toledo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (675, N'060507', N'Cajamarca', N'Contumazá', N'Tantarica')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (676, N'060508', N'Cajamarca', N'Contumazá', N'Yonan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (677, N'060600', N'Cajamarca', N'Cutervo', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (678, N'060601', N'Cajamarca', N'Cutervo', N'Cutervo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (679, N'060602', N'Cajamarca', N'Cutervo', N'Callayuc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (680, N'060603', N'Cajamarca', N'Cutervo', N'Choros')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (681, N'060604', N'Cajamarca', N'Cutervo', N'Cujillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (682, N'060605', N'Cajamarca', N'Cutervo', N'La Ramada')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (683, N'060606', N'Cajamarca', N'Cutervo', N'Pimpingos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (684, N'060607', N'Cajamarca', N'Cutervo', N'Querocotillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (685, N'060608', N'Cajamarca', N'Cutervo', N'San Andrés de Cutervo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (686, N'060609', N'Cajamarca', N'Cutervo', N'San Juan de Cutervo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (687, N'060610', N'Cajamarca', N'Cutervo', N'San Luis de Lucma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (688, N'060611', N'Cajamarca', N'Cutervo', N'Santa Cruz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (689, N'060612', N'Cajamarca', N'Cutervo', N'Santo Domingo de la Capilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (690, N'060613', N'Cajamarca', N'Cutervo', N'Santo Tomas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (691, N'060614', N'Cajamarca', N'Cutervo', N'Socota')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (692, N'060615', N'Cajamarca', N'Cutervo', N'Toribio Casanova')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (693, N'060700', N'Cajamarca', N'Hualgayoc', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (694, N'060701', N'Cajamarca', N'Hualgayoc', N'Bambamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (695, N'060702', N'Cajamarca', N'Hualgayoc', N'Chugur')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (696, N'060703', N'Cajamarca', N'Hualgayoc', N'Hualgayoc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (697, N'060800', N'Cajamarca', N'Jaén', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (698, N'060801', N'Cajamarca', N'Jaén', N'Jaén')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (699, N'060802', N'Cajamarca', N'Jaén', N'Bellavista')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (700, N'060803', N'Cajamarca', N'Jaén', N'Chontali')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (701, N'060804', N'Cajamarca', N'Jaén', N'Colasay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (702, N'060805', N'Cajamarca', N'Jaén', N'Huabal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (703, N'060806', N'Cajamarca', N'Jaén', N'Las Pirias')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (704, N'060807', N'Cajamarca', N'Jaén', N'Pomahuaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (705, N'060808', N'Cajamarca', N'Jaén', N'Pucara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (706, N'060809', N'Cajamarca', N'Jaén', N'Sallique')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (707, N'060810', N'Cajamarca', N'Jaén', N'San Felipe')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (708, N'060811', N'Cajamarca', N'Jaén', N'San José del Alto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (709, N'060812', N'Cajamarca', N'Jaén', N'Santa Rosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (710, N'060900', N'Cajamarca', N'San Ignacio', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (711, N'060901', N'Cajamarca', N'San Ignacio', N'San Ignacio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (712, N'060902', N'Cajamarca', N'San Ignacio', N'Chirinos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (713, N'060903', N'Cajamarca', N'San Ignacio', N'Huarango')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (714, N'060904', N'Cajamarca', N'San Ignacio', N'La Coipa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (715, N'060905', N'Cajamarca', N'San Ignacio', N'Namballe')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (716, N'060906', N'Cajamarca', N'San Ignacio', N'San José de Lourdes')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (717, N'060907', N'Cajamarca', N'San Ignacio', N'Tabaconas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (718, N'061000', N'Cajamarca', N'San Marcos', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (719, N'061001', N'Cajamarca', N'San Marcos', N'Pedro Gálvez')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (720, N'061002', N'Cajamarca', N'San Marcos', N'Chancay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (721, N'061003', N'Cajamarca', N'San Marcos', N'Eduardo Villanueva')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (722, N'061004', N'Cajamarca', N'San Marcos', N'Gregorio Pita')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (723, N'061005', N'Cajamarca', N'San Marcos', N'Ichocan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (724, N'061006', N'Cajamarca', N'San Marcos', N'José Manuel Quiroz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (725, N'061007', N'Cajamarca', N'San Marcos', N'José Sabogal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (726, N'061100', N'Cajamarca', N'San Miguel', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (727, N'061101', N'Cajamarca', N'San Miguel', N'San Miguel')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (728, N'061102', N'Cajamarca', N'San Miguel', N'Bolívar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (729, N'061103', N'Cajamarca', N'San Miguel', N'Calquis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (730, N'061104', N'Cajamarca', N'San Miguel', N'Catilluc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (731, N'061105', N'Cajamarca', N'San Miguel', N'El Prado')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (732, N'061106', N'Cajamarca', N'San Miguel', N'La Florida')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (733, N'061107', N'Cajamarca', N'San Miguel', N'Llapa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (734, N'061108', N'Cajamarca', N'San Miguel', N'Nanchoc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (735, N'061109', N'Cajamarca', N'San Miguel', N'Niepos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (736, N'061110', N'Cajamarca', N'San Miguel', N'San Gregorio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (737, N'061111', N'Cajamarca', N'San Miguel', N'San Silvestre de Cochan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (738, N'061112', N'Cajamarca', N'San Miguel', N'Tongod')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (739, N'061113', N'Cajamarca', N'San Miguel', N'Unión Agua Blanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (740, N'061200', N'Cajamarca', N'San Pablo', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (741, N'061201', N'Cajamarca', N'San Pablo', N'San Pablo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (742, N'061202', N'Cajamarca', N'San Pablo', N'San Bernardino')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (743, N'061203', N'Cajamarca', N'San Pablo', N'San Luis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (744, N'061204', N'Cajamarca', N'San Pablo', N'Tumbaden')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (745, N'061300', N'Cajamarca', N'Santa Cruz', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (746, N'061301', N'Cajamarca', N'Santa Cruz', N'Santa Cruz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (747, N'061302', N'Cajamarca', N'Santa Cruz', N'Andabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (748, N'061303', N'Cajamarca', N'Santa Cruz', N'Catache')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (749, N'061304', N'Cajamarca', N'Santa Cruz', N'Chancaybaños')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (750, N'061305', N'Cajamarca', N'Santa Cruz', N'La Esperanza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (751, N'061306', N'Cajamarca', N'Santa Cruz', N'Ninabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (752, N'061307', N'Cajamarca', N'Santa Cruz', N'Pulan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (753, N'061308', N'Cajamarca', N'Santa Cruz', N'Saucepampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (754, N'061309', N'Cajamarca', N'Santa Cruz', N'Sexi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (755, N'061310', N'Cajamarca', N'Santa Cruz', N'Uticyacu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (756, N'061311', N'Cajamarca', N'Santa Cruz', N'Yauyucan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (757, N'070000', N'Callao', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (758, N'070100', N'Callao', N'Prov. Const. del Callao', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (759, N'070101', N'Callao', N'Prov. Const. del Callao', N'Callao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (760, N'070102', N'Callao', N'Prov. Const. del Callao', N'Bellavista')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (761, N'070103', N'Callao', N'Prov. Const. del Callao', N'Carmen de la Legua Reynoso')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (762, N'070104', N'Callao', N'Prov. Const. del Callao', N'La Perla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (763, N'070105', N'Callao', N'Prov. Const. del Callao', N'La Punta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (764, N'070106', N'Callao', N'Prov. Const. del Callao', N'Ventanilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (765, N'070107', N'Callao', N'Prov. Const. del Callao', N'Mi Perú')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (766, N'080000', N'Cusco', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (767, N'080100', N'Cusco', N'Cusco', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (768, N'080101', N'Cusco', N'Cusco', N'Cusco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (769, N'080102', N'Cusco', N'Cusco', N'Ccorca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (770, N'080103', N'Cusco', N'Cusco', N'Poroy')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (771, N'080104', N'Cusco', N'Cusco', N'San Jerónimo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (772, N'080105', N'Cusco', N'Cusco', N'San Sebastian')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (773, N'080106', N'Cusco', N'Cusco', N'Santiago')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (774, N'080107', N'Cusco', N'Cusco', N'Saylla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (775, N'080108', N'Cusco', N'Cusco', N'Wanchaq')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (776, N'080200', N'Cusco', N'Acomayo', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (777, N'080201', N'Cusco', N'Acomayo', N'Acomayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (778, N'080202', N'Cusco', N'Acomayo', N'Acopia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (779, N'080203', N'Cusco', N'Acomayo', N'Acos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (780, N'080204', N'Cusco', N'Acomayo', N'Mosoc Llacta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (781, N'080205', N'Cusco', N'Acomayo', N'Pomacanchi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (782, N'080206', N'Cusco', N'Acomayo', N'Rondocan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (783, N'080207', N'Cusco', N'Acomayo', N'Sangarara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (784, N'080300', N'Cusco', N'Anta', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (785, N'080301', N'Cusco', N'Anta', N'Anta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (786, N'080302', N'Cusco', N'Anta', N'Ancahuasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (787, N'080303', N'Cusco', N'Anta', N'Cachimayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (788, N'080304', N'Cusco', N'Anta', N'Chinchaypujio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (789, N'080305', N'Cusco', N'Anta', N'Huarocondo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (790, N'080306', N'Cusco', N'Anta', N'Limatambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (791, N'080307', N'Cusco', N'Anta', N'Mollepata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (792, N'080308', N'Cusco', N'Anta', N'Pucyura')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (793, N'080309', N'Cusco', N'Anta', N'Zurite')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (794, N'080400', N'Cusco', N'Calca', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (795, N'080401', N'Cusco', N'Calca', N'Calca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (796, N'080402', N'Cusco', N'Calca', N'Coya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (797, N'080403', N'Cusco', N'Calca', N'Lamay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (798, N'080404', N'Cusco', N'Calca', N'Lares')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (799, N'080405', N'Cusco', N'Calca', N'Pisac')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (800, N'080406', N'Cusco', N'Calca', N'San Salvador')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (801, N'080407', N'Cusco', N'Calca', N'Taray')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (802, N'080408', N'Cusco', N'Calca', N'Yanatile')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (803, N'080500', N'Cusco', N'Canas', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (804, N'080501', N'Cusco', N'Canas', N'Yanaoca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (805, N'080502', N'Cusco', N'Canas', N'Checca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (806, N'080503', N'Cusco', N'Canas', N'Kunturkanki')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (807, N'080504', N'Cusco', N'Canas', N'Langui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (808, N'080505', N'Cusco', N'Canas', N'Layo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (809, N'080506', N'Cusco', N'Canas', N'Pampamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (810, N'080507', N'Cusco', N'Canas', N'Quehue')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (811, N'080508', N'Cusco', N'Canas', N'Tupac Amaru')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (812, N'080600', N'Cusco', N'Canchis', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (813, N'080601', N'Cusco', N'Canchis', N'Sicuani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (814, N'080602', N'Cusco', N'Canchis', N'Checacupe')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (815, N'080603', N'Cusco', N'Canchis', N'Combapata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (816, N'080604', N'Cusco', N'Canchis', N'Marangani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (817, N'080605', N'Cusco', N'Canchis', N'Pitumarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (818, N'080606', N'Cusco', N'Canchis', N'San Pablo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (819, N'080607', N'Cusco', N'Canchis', N'San Pedro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (820, N'080608', N'Cusco', N'Canchis', N'Tinta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (821, N'080700', N'Cusco', N'Chumbivilcas', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (822, N'080701', N'Cusco', N'Chumbivilcas', N'Santo Tomas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (823, N'080702', N'Cusco', N'Chumbivilcas', N'Capacmarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (824, N'080703', N'Cusco', N'Chumbivilcas', N'Chamaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (825, N'080704', N'Cusco', N'Chumbivilcas', N'Colquemarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (826, N'080705', N'Cusco', N'Chumbivilcas', N'Livitaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (827, N'080706', N'Cusco', N'Chumbivilcas', N'Llusco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (828, N'080707', N'Cusco', N'Chumbivilcas', N'Quiñota')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (829, N'080708', N'Cusco', N'Chumbivilcas', N'Velille')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (830, N'080800', N'Cusco', N'Espinar', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (831, N'080801', N'Cusco', N'Espinar', N'Espinar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (832, N'080802', N'Cusco', N'Espinar', N'Condoroma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (833, N'080803', N'Cusco', N'Espinar', N'Coporaque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (834, N'080804', N'Cusco', N'Espinar', N'Ocoruro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (835, N'080805', N'Cusco', N'Espinar', N'Pallpata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (836, N'080806', N'Cusco', N'Espinar', N'Pichigua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (837, N'080807', N'Cusco', N'Espinar', N'Suyckutambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (838, N'080808', N'Cusco', N'Espinar', N'Alto Pichigua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (839, N'080900', N'Cusco', N'La Convención', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (840, N'080901', N'Cusco', N'La Convención', N'Santa Ana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (841, N'080902', N'Cusco', N'La Convención', N'Echarate')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (842, N'080903', N'Cusco', N'La Convención', N'Huayopata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (843, N'080904', N'Cusco', N'La Convención', N'Maranura')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (844, N'080905', N'Cusco', N'La Convención', N'Ocobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (845, N'080906', N'Cusco', N'La Convención', N'Quellouno')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (846, N'080907', N'Cusco', N'La Convención', N'Kimbiri')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (847, N'080908', N'Cusco', N'La Convención', N'Santa Teresa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (848, N'080909', N'Cusco', N'La Convención', N'Vilcabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (849, N'080910', N'Cusco', N'La Convención', N'Pichari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (850, N'080911', N'Cusco', N'La Convención', N'Inkawasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (851, N'080912', N'Cusco', N'La Convención', N'Villa Virgen')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (852, N'080913', N'Cusco', N'La Convención', N'Villa Kintiarina')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (853, N'081000', N'Cusco', N'Paruro', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (854, N'081001', N'Cusco', N'Paruro', N'Paruro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (855, N'081002', N'Cusco', N'Paruro', N'Accha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (856, N'081003', N'Cusco', N'Paruro', N'Ccapi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (857, N'081004', N'Cusco', N'Paruro', N'Colcha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (858, N'081005', N'Cusco', N'Paruro', N'Huanoquite')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (859, N'081006', N'Cusco', N'Paruro', N'Omacha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (860, N'081007', N'Cusco', N'Paruro', N'Paccaritambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (861, N'081008', N'Cusco', N'Paruro', N'Pillpinto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (862, N'081009', N'Cusco', N'Paruro', N'Yaurisque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (863, N'081100', N'Cusco', N'Paucartambo', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (864, N'081101', N'Cusco', N'Paucartambo', N'Paucartambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (865, N'081102', N'Cusco', N'Paucartambo', N'Caicay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (866, N'081103', N'Cusco', N'Paucartambo', N'Challabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (867, N'081104', N'Cusco', N'Paucartambo', N'Colquepata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (868, N'081105', N'Cusco', N'Paucartambo', N'Huancarani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (869, N'081106', N'Cusco', N'Paucartambo', N'Kosñipata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (870, N'081200', N'Cusco', N'Quispicanchi', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (871, N'081201', N'Cusco', N'Quispicanchi', N'Urcos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (872, N'081202', N'Cusco', N'Quispicanchi', N'Andahuaylillas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (873, N'081203', N'Cusco', N'Quispicanchi', N'Camanti')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (874, N'081204', N'Cusco', N'Quispicanchi', N'Ccarhuayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (875, N'081205', N'Cusco', N'Quispicanchi', N'Ccatca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (876, N'081206', N'Cusco', N'Quispicanchi', N'Cusipata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (877, N'081207', N'Cusco', N'Quispicanchi', N'Huaro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (878, N'081208', N'Cusco', N'Quispicanchi', N'Lucre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (879, N'081209', N'Cusco', N'Quispicanchi', N'Marcapata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (880, N'081210', N'Cusco', N'Quispicanchi', N'Ocongate')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (881, N'081211', N'Cusco', N'Quispicanchi', N'Oropesa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (882, N'081212', N'Cusco', N'Quispicanchi', N'Quiquijana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (883, N'081300', N'Cusco', N'Urubamba', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (884, N'081301', N'Cusco', N'Urubamba', N'Urubamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (885, N'081302', N'Cusco', N'Urubamba', N'Chinchero')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (886, N'081303', N'Cusco', N'Urubamba', N'Huayllabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (887, N'081304', N'Cusco', N'Urubamba', N'Machupicchu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (888, N'081305', N'Cusco', N'Urubamba', N'Maras')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (889, N'081306', N'Cusco', N'Urubamba', N'Ollantaytambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (890, N'081307', N'Cusco', N'Urubamba', N'Yucay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (891, N'090000', N'Huancavelica', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (892, N'090100', N'Huancavelica', N'Huancavelica', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (893, N'090101', N'Huancavelica', N'Huancavelica', N'Huancavelica')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (894, N'090102', N'Huancavelica', N'Huancavelica', N'Acobambilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (895, N'090103', N'Huancavelica', N'Huancavelica', N'Acoria')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (896, N'090104', N'Huancavelica', N'Huancavelica', N'Conayca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (897, N'090105', N'Huancavelica', N'Huancavelica', N'Cuenca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (898, N'090106', N'Huancavelica', N'Huancavelica', N'Huachocolpa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (899, N'090107', N'Huancavelica', N'Huancavelica', N'Huayllahuara')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (900, N'090108', N'Huancavelica', N'Huancavelica', N'Izcuchaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (901, N'090109', N'Huancavelica', N'Huancavelica', N'Laria')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (902, N'090110', N'Huancavelica', N'Huancavelica', N'Manta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (903, N'090111', N'Huancavelica', N'Huancavelica', N'Mariscal Cáceres')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (904, N'090112', N'Huancavelica', N'Huancavelica', N'Moya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (905, N'090113', N'Huancavelica', N'Huancavelica', N'Nuevo Occoro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (906, N'090114', N'Huancavelica', N'Huancavelica', N'Palca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (907, N'090115', N'Huancavelica', N'Huancavelica', N'Pilchaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (908, N'090116', N'Huancavelica', N'Huancavelica', N'Vilca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (909, N'090117', N'Huancavelica', N'Huancavelica', N'Yauli')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (910, N'090118', N'Huancavelica', N'Huancavelica', N'Ascensión')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (911, N'090119', N'Huancavelica', N'Huancavelica', N'Huando')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (912, N'090200', N'Huancavelica', N'Acobamba', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (913, N'090201', N'Huancavelica', N'Acobamba', N'Acobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (914, N'090202', N'Huancavelica', N'Acobamba', N'Andabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (915, N'090203', N'Huancavelica', N'Acobamba', N'Anta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (916, N'090204', N'Huancavelica', N'Acobamba', N'Caja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (917, N'090205', N'Huancavelica', N'Acobamba', N'Marcas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (918, N'090206', N'Huancavelica', N'Acobamba', N'Paucara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (919, N'090207', N'Huancavelica', N'Acobamba', N'Pomacocha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (920, N'090208', N'Huancavelica', N'Acobamba', N'Rosario')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (921, N'090300', N'Huancavelica', N'Angaraes', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (922, N'090301', N'Huancavelica', N'Angaraes', N'Lircay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (923, N'090302', N'Huancavelica', N'Angaraes', N'Anchonga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (924, N'090303', N'Huancavelica', N'Angaraes', N'Callanmarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (925, N'090304', N'Huancavelica', N'Angaraes', N'Ccochaccasa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (926, N'090305', N'Huancavelica', N'Angaraes', N'Chincho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (927, N'090306', N'Huancavelica', N'Angaraes', N'Congalla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (928, N'090307', N'Huancavelica', N'Angaraes', N'Huanca-Huanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (929, N'090308', N'Huancavelica', N'Angaraes', N'Huayllay Grande')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (930, N'090309', N'Huancavelica', N'Angaraes', N'Julcamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (931, N'090310', N'Huancavelica', N'Angaraes', N'San Antonio de Antaparco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (932, N'090311', N'Huancavelica', N'Angaraes', N'Santo Tomas de Pata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (933, N'090312', N'Huancavelica', N'Angaraes', N'Secclla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (934, N'090400', N'Huancavelica', N'Castrovirreyna', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (935, N'090401', N'Huancavelica', N'Castrovirreyna', N'Castrovirreyna')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (936, N'090402', N'Huancavelica', N'Castrovirreyna', N'Arma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (937, N'090403', N'Huancavelica', N'Castrovirreyna', N'Aurahua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (938, N'090404', N'Huancavelica', N'Castrovirreyna', N'Capillas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (939, N'090405', N'Huancavelica', N'Castrovirreyna', N'Chupamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (940, N'090406', N'Huancavelica', N'Castrovirreyna', N'Cocas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (941, N'090407', N'Huancavelica', N'Castrovirreyna', N'Huachos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (942, N'090408', N'Huancavelica', N'Castrovirreyna', N'Huamatambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (943, N'090409', N'Huancavelica', N'Castrovirreyna', N'Mollepampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (944, N'090410', N'Huancavelica', N'Castrovirreyna', N'San Juan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (945, N'090411', N'Huancavelica', N'Castrovirreyna', N'Santa Ana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (946, N'090412', N'Huancavelica', N'Castrovirreyna', N'Tantara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (947, N'090413', N'Huancavelica', N'Castrovirreyna', N'Ticrapo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (948, N'090500', N'Huancavelica', N'Churcampa', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (949, N'090501', N'Huancavelica', N'Churcampa', N'Churcampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (950, N'090502', N'Huancavelica', N'Churcampa', N'Anco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (951, N'090503', N'Huancavelica', N'Churcampa', N'Chinchihuasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (952, N'090504', N'Huancavelica', N'Churcampa', N'El Carmen')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (953, N'090505', N'Huancavelica', N'Churcampa', N'La Merced')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (954, N'090506', N'Huancavelica', N'Churcampa', N'Locroja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (955, N'090507', N'Huancavelica', N'Churcampa', N'Paucarbamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (956, N'090508', N'Huancavelica', N'Churcampa', N'San Miguel de Mayocc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (957, N'090509', N'Huancavelica', N'Churcampa', N'San Pedro de Coris')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (958, N'090510', N'Huancavelica', N'Churcampa', N'Pachamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (959, N'090511', N'Huancavelica', N'Churcampa', N'Cosme')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (960, N'090600', N'Huancavelica', N'Huaytará', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (961, N'090601', N'Huancavelica', N'Huaytará', N'Huaytara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (962, N'090602', N'Huancavelica', N'Huaytará', N'Ayavi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (963, N'090603', N'Huancavelica', N'Huaytará', N'Córdova')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (964, N'090604', N'Huancavelica', N'Huaytará', N'Huayacundo Arma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (965, N'090605', N'Huancavelica', N'Huaytará', N'Laramarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (966, N'090606', N'Huancavelica', N'Huaytará', N'Ocoyo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (967, N'090607', N'Huancavelica', N'Huaytará', N'Pilpichaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (968, N'090608', N'Huancavelica', N'Huaytará', N'Querco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (969, N'090609', N'Huancavelica', N'Huaytará', N'Quito-Arma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (970, N'090610', N'Huancavelica', N'Huaytará', N'San Antonio de Cusicancha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (971, N'090611', N'Huancavelica', N'Huaytará', N'San Francisco de Sangayaico')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (972, N'090612', N'Huancavelica', N'Huaytará', N'San Isidro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (973, N'090613', N'Huancavelica', N'Huaytará', N'Santiago de Chocorvos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (974, N'090614', N'Huancavelica', N'Huaytará', N'Santiago de Quirahuara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (975, N'090615', N'Huancavelica', N'Huaytará', N'Santo Domingo de Capillas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (976, N'090616', N'Huancavelica', N'Huaytará', N'Tambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (977, N'090700', N'Huancavelica', N'Tayacaja', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (978, N'090701', N'Huancavelica', N'Tayacaja', N'Pampas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (979, N'090702', N'Huancavelica', N'Tayacaja', N'Acostambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (980, N'090703', N'Huancavelica', N'Tayacaja', N'Acraquia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (981, N'090704', N'Huancavelica', N'Tayacaja', N'Ahuaycha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (982, N'090705', N'Huancavelica', N'Tayacaja', N'Colcabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (983, N'090706', N'Huancavelica', N'Tayacaja', N'Daniel Hernández')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (984, N'090707', N'Huancavelica', N'Tayacaja', N'Huachocolpa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (985, N'090709', N'Huancavelica', N'Tayacaja', N'Huaribamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (986, N'090710', N'Huancavelica', N'Tayacaja', N'Ñahuimpuquio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (987, N'090711', N'Huancavelica', N'Tayacaja', N'Pazos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (988, N'090713', N'Huancavelica', N'Tayacaja', N'Quishuar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (989, N'090714', N'Huancavelica', N'Tayacaja', N'Salcabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (990, N'090715', N'Huancavelica', N'Tayacaja', N'Salcahuasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (991, N'090716', N'Huancavelica', N'Tayacaja', N'San Marcos de Rocchac')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (992, N'090717', N'Huancavelica', N'Tayacaja', N'Surcubamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (993, N'090718', N'Huancavelica', N'Tayacaja', N'Tintay Puncu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (994, N'090719', N'Huancavelica', N'Tayacaja', N'Quichuas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (995, N'090720', N'Huancavelica', N'Tayacaja', N'Andaymarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (996, N'100000', N'Huánuco', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (997, N'100100', N'Huánuco', N'Huánuco', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (998, N'100101', N'Huánuco', N'Huánuco', N'Huanuco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (999, N'100102', N'Huánuco', N'Huánuco', N'Amarilis')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1000, N'100103', N'Huánuco', N'Huánuco', N'Chinchao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1001, N'100104', N'Huánuco', N'Huánuco', N'Churubamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1002, N'100105', N'Huánuco', N'Huánuco', N'Margos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1003, N'100106', N'Huánuco', N'Huánuco', N'Quisqui (Kichki)')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1004, N'100107', N'Huánuco', N'Huánuco', N'San Francisco de Cayran')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1005, N'100108', N'Huánuco', N'Huánuco', N'San Pedro de Chaulan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1006, N'100109', N'Huánuco', N'Huánuco', N'Santa María del Valle')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1007, N'100110', N'Huánuco', N'Huánuco', N'Yarumayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1008, N'100111', N'Huánuco', N'Huánuco', N'Pillco Marca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1009, N'100112', N'Huánuco', N'Huánuco', N'Yacus')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1010, N'100200', N'Huánuco', N'Ambo', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1011, N'100201', N'Huánuco', N'Ambo', N'Ambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1012, N'100202', N'Huánuco', N'Ambo', N'Cayna')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1013, N'100203', N'Huánuco', N'Ambo', N'Colpas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1014, N'100204', N'Huánuco', N'Ambo', N'Conchamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1015, N'100205', N'Huánuco', N'Ambo', N'Huacar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1016, N'100206', N'Huánuco', N'Ambo', N'San Francisco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1017, N'100207', N'Huánuco', N'Ambo', N'San Rafael')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1018, N'100208', N'Huánuco', N'Ambo', N'Tomay Kichwa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1019, N'100300', N'Huánuco', N'Dos de Mayo', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1020, N'100301', N'Huánuco', N'Dos de Mayo', N'La Unión')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1021, N'100307', N'Huánuco', N'Dos de Mayo', N'Chuquis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1022, N'100311', N'Huánuco', N'Dos de Mayo', N'Marías')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1023, N'100313', N'Huánuco', N'Dos de Mayo', N'Pachas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1024, N'100316', N'Huánuco', N'Dos de Mayo', N'Quivilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1025, N'100317', N'Huánuco', N'Dos de Mayo', N'Ripan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1026, N'100321', N'Huánuco', N'Dos de Mayo', N'Shunqui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1027, N'100322', N'Huánuco', N'Dos de Mayo', N'Sillapata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1028, N'100323', N'Huánuco', N'Dos de Mayo', N'Yanas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1029, N'100400', N'Huánuco', N'Huacaybamba', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1030, N'100401', N'Huánuco', N'Huacaybamba', N'Huacaybamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1031, N'100402', N'Huánuco', N'Huacaybamba', N'Canchabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1032, N'100403', N'Huánuco', N'Huacaybamba', N'Cochabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1033, N'100404', N'Huánuco', N'Huacaybamba', N'Pinra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1034, N'100500', N'Huánuco', N'Huamalíes', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1035, N'100501', N'Huánuco', N'Huamalíes', N'Llata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1036, N'100502', N'Huánuco', N'Huamalíes', N'Arancay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1037, N'100503', N'Huánuco', N'Huamalíes', N'Chavín de Pariarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1038, N'100504', N'Huánuco', N'Huamalíes', N'Jacas Grande')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1039, N'100505', N'Huánuco', N'Huamalíes', N'Jircan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1040, N'100506', N'Huánuco', N'Huamalíes', N'Miraflores')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1041, N'100507', N'Huánuco', N'Huamalíes', N'Monzón')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1042, N'100508', N'Huánuco', N'Huamalíes', N'Punchao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1043, N'100509', N'Huánuco', N'Huamalíes', N'Puños')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1044, N'100510', N'Huánuco', N'Huamalíes', N'Singa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1045, N'100511', N'Huánuco', N'Huamalíes', N'Tantamayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1046, N'100600', N'Huánuco', N'Leoncio Prado', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1047, N'100601', N'Huánuco', N'Leoncio Prado', N'Rupa-Rupa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1048, N'100602', N'Huánuco', N'Leoncio Prado', N'Daniel Alomía Robles')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1049, N'100603', N'Huánuco', N'Leoncio Prado', N'Hermílio Valdizan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1050, N'100604', N'Huánuco', N'Leoncio Prado', N'José Crespo y Castillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1051, N'100605', N'Huánuco', N'Leoncio Prado', N'Luyando')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1052, N'100606', N'Huánuco', N'Leoncio Prado', N'Mariano Damaso Beraun')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1053, N'100700', N'Huánuco', N'Marañón', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1054, N'100701', N'Huánuco', N'Marañón', N'Huacrachuco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1055, N'100702', N'Huánuco', N'Marañón', N'Cholon')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1056, N'100703', N'Huánuco', N'Marañón', N'San Buenaventura')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1057, N'100800', N'Huánuco', N'Pachitea', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1058, N'100801', N'Huánuco', N'Pachitea', N'Panao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1059, N'100802', N'Huánuco', N'Pachitea', N'Chaglla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1060, N'100803', N'Huánuco', N'Pachitea', N'Molino')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1061, N'100804', N'Huánuco', N'Pachitea', N'Umari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1062, N'100900', N'Huánuco', N'Puerto Inca', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1063, N'100901', N'Huánuco', N'Puerto Inca', N'Puerto Inca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1064, N'100902', N'Huánuco', N'Puerto Inca', N'Codo del Pozuzo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1065, N'100903', N'Huánuco', N'Puerto Inca', N'Honoria')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1066, N'100904', N'Huánuco', N'Puerto Inca', N'Tournavista')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1067, N'100905', N'Huánuco', N'Puerto Inca', N'Yuyapichis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1068, N'101000', N'Huánuco', N'Lauricocha ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1069, N'101001', N'Huánuco', N'Lauricocha ', N'Jesús')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1070, N'101002', N'Huánuco', N'Lauricocha ', N'Baños')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1071, N'101003', N'Huánuco', N'Lauricocha ', N'Jivia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1072, N'101004', N'Huánuco', N'Lauricocha ', N'Queropalca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1073, N'101005', N'Huánuco', N'Lauricocha ', N'Rondos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1074, N'101006', N'Huánuco', N'Lauricocha ', N'San Francisco de Asís')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1075, N'101007', N'Huánuco', N'Lauricocha ', N'San Miguel de Cauri')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1076, N'101100', N'Huánuco', N'Yarowilca ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1077, N'101101', N'Huánuco', N'Yarowilca ', N'Chavinillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1078, N'101102', N'Huánuco', N'Yarowilca ', N'Cahuac')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1079, N'101103', N'Huánuco', N'Yarowilca ', N'Chacabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1080, N'101104', N'Huánuco', N'Yarowilca ', N'Aparicio Pomares')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1081, N'101105', N'Huánuco', N'Yarowilca ', N'Jacas Chico')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1082, N'101106', N'Huánuco', N'Yarowilca ', N'Obas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1083, N'101107', N'Huánuco', N'Yarowilca ', N'Pampamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1084, N'101108', N'Huánuco', N'Yarowilca ', N'Choras')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1085, N'110000', N'Ica', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1086, N'110100', N'Ica', N'Ica ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1087, N'110101', N'Ica', N'Ica ', N'Ica')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1088, N'110102', N'Ica', N'Ica ', N'La Tinguiña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1089, N'110103', N'Ica', N'Ica ', N'Los Aquijes')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1090, N'110104', N'Ica', N'Ica ', N'Ocucaje')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1091, N'110105', N'Ica', N'Ica ', N'Pachacutec')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1092, N'110106', N'Ica', N'Ica ', N'Parcona')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1093, N'110107', N'Ica', N'Ica ', N'Pueblo Nuevo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1094, N'110108', N'Ica', N'Ica ', N'Salas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1095, N'110109', N'Ica', N'Ica ', N'San José de Los Molinos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1096, N'110110', N'Ica', N'Ica ', N'San Juan Bautista')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1097, N'110111', N'Ica', N'Ica ', N'Santiago')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1098, N'110112', N'Ica', N'Ica ', N'Subtanjalla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1099, N'110113', N'Ica', N'Ica ', N'Tate')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1100, N'110114', N'Ica', N'Ica ', N'Yauca del Rosario')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1101, N'110200', N'Ica', N'Chincha ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1102, N'110201', N'Ica', N'Chincha ', N'Chincha Alta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1103, N'110202', N'Ica', N'Chincha ', N'Alto Laran')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1104, N'110203', N'Ica', N'Chincha ', N'Chavin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1105, N'110204', N'Ica', N'Chincha ', N'Chincha Baja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1106, N'110205', N'Ica', N'Chincha ', N'El Carmen')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1107, N'110206', N'Ica', N'Chincha ', N'Grocio Prado')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1108, N'110207', N'Ica', N'Chincha ', N'Pueblo Nuevo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1109, N'110208', N'Ica', N'Chincha ', N'San Juan de Yanac')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1110, N'110209', N'Ica', N'Chincha ', N'San Pedro de Huacarpana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1111, N'110210', N'Ica', N'Chincha ', N'Sunampe')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1112, N'110211', N'Ica', N'Chincha ', N'Tambo de Mora')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1113, N'110300', N'Ica', N'Nazca ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1114, N'110301', N'Ica', N'Nazca ', N'Nasca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1115, N'110302', N'Ica', N'Nazca ', N'Changuillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1116, N'110303', N'Ica', N'Nazca ', N'El Ingenio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1117, N'110304', N'Ica', N'Nazca ', N'Marcona')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1118, N'110305', N'Ica', N'Nazca ', N'Vista Alegre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1119, N'110400', N'Ica', N'Palpa ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1120, N'110401', N'Ica', N'Palpa ', N'Palpa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1121, N'110402', N'Ica', N'Palpa ', N'Llipata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1122, N'110403', N'Ica', N'Palpa ', N'Río Grande')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1123, N'110404', N'Ica', N'Palpa ', N'Santa Cruz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1124, N'110405', N'Ica', N'Palpa ', N'Tibillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1125, N'110500', N'Ica', N'Pisco ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1126, N'110501', N'Ica', N'Pisco ', N'Pisco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1127, N'110502', N'Ica', N'Pisco ', N'Huancano')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1128, N'110503', N'Ica', N'Pisco ', N'Humay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1129, N'110504', N'Ica', N'Pisco ', N'Independencia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1130, N'110505', N'Ica', N'Pisco ', N'Paracas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1131, N'110506', N'Ica', N'Pisco ', N'San Andrés')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1132, N'110507', N'Ica', N'Pisco ', N'San Clemente')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1133, N'110508', N'Ica', N'Pisco ', N'Tupac Amaru Inca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1134, N'120000', N'Junín', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1135, N'120100', N'Junín', N'Huancayo ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1136, N'120101', N'Junín', N'Huancayo ', N'Huancayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1137, N'120104', N'Junín', N'Huancayo ', N'Carhuacallanga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1138, N'120105', N'Junín', N'Huancayo ', N'Chacapampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1139, N'120106', N'Junín', N'Huancayo ', N'Chicche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1140, N'120107', N'Junín', N'Huancayo ', N'Chilca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1141, N'120108', N'Junín', N'Huancayo ', N'Chongos Alto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1142, N'120111', N'Junín', N'Huancayo ', N'Chupuro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1143, N'120112', N'Junín', N'Huancayo ', N'Colca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1144, N'120113', N'Junín', N'Huancayo ', N'Cullhuas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1145, N'120114', N'Junín', N'Huancayo ', N'El Tambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1146, N'120116', N'Junín', N'Huancayo ', N'Huacrapuquio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1147, N'120117', N'Junín', N'Huancayo ', N'Hualhuas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1148, N'120119', N'Junín', N'Huancayo ', N'Huancan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1149, N'120120', N'Junín', N'Huancayo ', N'Huasicancha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1150, N'120121', N'Junín', N'Huancayo ', N'Huayucachi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1151, N'120122', N'Junín', N'Huancayo ', N'Ingenio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1152, N'120124', N'Junín', N'Huancayo ', N'Pariahuanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1153, N'120125', N'Junín', N'Huancayo ', N'Pilcomayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1154, N'120126', N'Junín', N'Huancayo ', N'Pucara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1155, N'120127', N'Junín', N'Huancayo ', N'Quichuay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1156, N'120128', N'Junín', N'Huancayo ', N'Quilcas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1157, N'120129', N'Junín', N'Huancayo ', N'San Agustín')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1158, N'120130', N'Junín', N'Huancayo ', N'San Jerónimo de Tunan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1159, N'120132', N'Junín', N'Huancayo ', N'Saño')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1160, N'120133', N'Junín', N'Huancayo ', N'Sapallanga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1161, N'120134', N'Junín', N'Huancayo ', N'Sicaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1162, N'120135', N'Junín', N'Huancayo ', N'Santo Domingo de Acobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1163, N'120136', N'Junín', N'Huancayo ', N'Viques')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1164, N'120200', N'Junín', N'Concepción ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1165, N'120201', N'Junín', N'Concepción ', N'Concepción')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1166, N'120202', N'Junín', N'Concepción ', N'Aco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1167, N'120203', N'Junín', N'Concepción ', N'Andamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1168, N'120204', N'Junín', N'Concepción ', N'Chambara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1169, N'120205', N'Junín', N'Concepción ', N'Cochas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1170, N'120206', N'Junín', N'Concepción ', N'Comas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1171, N'120207', N'Junín', N'Concepción ', N'Heroínas Toledo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1172, N'120208', N'Junín', N'Concepción ', N'Manzanares')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1173, N'120209', N'Junín', N'Concepción ', N'Mariscal Castilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1174, N'120210', N'Junín', N'Concepción ', N'Matahuasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1175, N'120211', N'Junín', N'Concepción ', N'Mito')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1176, N'120212', N'Junín', N'Concepción ', N'Nueve de Julio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1177, N'120213', N'Junín', N'Concepción ', N'Orcotuna')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1178, N'120214', N'Junín', N'Concepción ', N'San José de Quero')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1179, N'120215', N'Junín', N'Concepción ', N'Santa Rosa de Ocopa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1180, N'120300', N'Junín', N'Chanchamayo ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1181, N'120301', N'Junín', N'Chanchamayo ', N'Chanchamayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1182, N'120302', N'Junín', N'Chanchamayo ', N'Perene')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1183, N'120303', N'Junín', N'Chanchamayo ', N'Pichanaqui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1184, N'120304', N'Junín', N'Chanchamayo ', N'San Luis de Shuaro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1185, N'120305', N'Junín', N'Chanchamayo ', N'San Ramón')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1186, N'120306', N'Junín', N'Chanchamayo ', N'Vitoc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1187, N'120400', N'Junín', N'Jauja ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1188, N'120401', N'Junín', N'Jauja ', N'Jauja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1189, N'120402', N'Junín', N'Jauja ', N'Acolla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1190, N'120403', N'Junín', N'Jauja ', N'Apata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1191, N'120404', N'Junín', N'Jauja ', N'Ataura')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1192, N'120405', N'Junín', N'Jauja ', N'Canchayllo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1193, N'120406', N'Junín', N'Jauja ', N'Curicaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1194, N'120407', N'Junín', N'Jauja ', N'El Mantaro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1195, N'120408', N'Junín', N'Jauja ', N'Huamali')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1196, N'120409', N'Junín', N'Jauja ', N'Huaripampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1197, N'120410', N'Junín', N'Jauja ', N'Huertas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1198, N'120411', N'Junín', N'Jauja ', N'Janjaillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1199, N'120412', N'Junín', N'Jauja ', N'Julcán')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1200, N'120413', N'Junín', N'Jauja ', N'Leonor Ordóñez')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1201, N'120414', N'Junín', N'Jauja ', N'Llocllapampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1202, N'120415', N'Junín', N'Jauja ', N'Marco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1203, N'120416', N'Junín', N'Jauja ', N'Masma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1204, N'120417', N'Junín', N'Jauja ', N'Masma Chicche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1205, N'120418', N'Junín', N'Jauja ', N'Molinos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1206, N'120419', N'Junín', N'Jauja ', N'Monobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1207, N'120420', N'Junín', N'Jauja ', N'Muqui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1208, N'120421', N'Junín', N'Jauja ', N'Muquiyauyo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1209, N'120422', N'Junín', N'Jauja ', N'Paca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1210, N'120423', N'Junín', N'Jauja ', N'Paccha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1211, N'120424', N'Junín', N'Jauja ', N'Pancan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1212, N'120425', N'Junín', N'Jauja ', N'Parco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1213, N'120426', N'Junín', N'Jauja ', N'Pomacancha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1214, N'120427', N'Junín', N'Jauja ', N'Ricran')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1215, N'120428', N'Junín', N'Jauja ', N'San Lorenzo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1216, N'120429', N'Junín', N'Jauja ', N'San Pedro de Chunan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1217, N'120430', N'Junín', N'Jauja ', N'Sausa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1218, N'120431', N'Junín', N'Jauja ', N'Sincos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1219, N'120432', N'Junín', N'Jauja ', N'Tunan Marca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1220, N'120433', N'Junín', N'Jauja ', N'Yauli')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1221, N'120434', N'Junín', N'Jauja ', N'Yauyos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1222, N'120500', N'Junín', N'Junín ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1223, N'120501', N'Junín', N'Junín ', N'Junin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1224, N'120502', N'Junín', N'Junín ', N'Carhuamayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1225, N'120503', N'Junín', N'Junín ', N'Ondores')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1226, N'120504', N'Junín', N'Junín ', N'Ulcumayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1227, N'120600', N'Junín', N'Satipo ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1228, N'120601', N'Junín', N'Satipo ', N'Satipo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1229, N'120602', N'Junín', N'Satipo ', N'Coviriali')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1230, N'120603', N'Junín', N'Satipo ', N'Llaylla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1231, N'120604', N'Junín', N'Satipo ', N'Mazamari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1232, N'120605', N'Junín', N'Satipo ', N'Pampa Hermosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1233, N'120606', N'Junín', N'Satipo ', N'Pangoa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1234, N'120607', N'Junín', N'Satipo ', N'Río Negro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1235, N'120608', N'Junín', N'Satipo ', N'Río Tambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1236, N'120609', N'Junín', N'Satipo ', N'Vizcatan del Ene')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1237, N'120700', N'Junín', N'Tarma ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1238, N'120701', N'Junín', N'Tarma ', N'Tarma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1239, N'120702', N'Junín', N'Tarma ', N'Acobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1240, N'120703', N'Junín', N'Tarma ', N'Huaricolca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1241, N'120704', N'Junín', N'Tarma ', N'Huasahuasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1242, N'120705', N'Junín', N'Tarma ', N'La Unión')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1243, N'120706', N'Junín', N'Tarma ', N'Palca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1244, N'120707', N'Junín', N'Tarma ', N'Palcamayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1245, N'120708', N'Junín', N'Tarma ', N'San Pedro de Cajas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1246, N'120709', N'Junín', N'Tarma ', N'Tapo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1247, N'120800', N'Junín', N'Yauli ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1248, N'120801', N'Junín', N'Yauli ', N'La Oroya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1249, N'120802', N'Junín', N'Yauli ', N'Chacapalpa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1250, N'120803', N'Junín', N'Yauli ', N'Huay-Huay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1251, N'120804', N'Junín', N'Yauli ', N'Marcapomacocha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1252, N'120805', N'Junín', N'Yauli ', N'Morococha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1253, N'120806', N'Junín', N'Yauli ', N'Paccha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1254, N'120807', N'Junín', N'Yauli ', N'Santa Bárbara de Carhuacayan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1255, N'120808', N'Junín', N'Yauli ', N'Santa Rosa de Sacco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1256, N'120809', N'Junín', N'Yauli ', N'Suitucancha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1257, N'120810', N'Junín', N'Yauli ', N'Yauli')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1258, N'120900', N'Junín', N'Chupaca ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1259, N'120901', N'Junín', N'Chupaca ', N'Chupaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1260, N'120902', N'Junín', N'Chupaca ', N'Ahuac')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1261, N'120903', N'Junín', N'Chupaca ', N'Chongos Bajo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1262, N'120904', N'Junín', N'Chupaca ', N'Huachac')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1263, N'120905', N'Junín', N'Chupaca ', N'Huamancaca Chico')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1264, N'120906', N'Junín', N'Chupaca ', N'San Juan de Iscos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1265, N'120907', N'Junín', N'Chupaca ', N'San Juan de Jarpa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1266, N'120908', N'Junín', N'Chupaca ', N'Tres de Diciembre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1267, N'120909', N'Junín', N'Chupaca ', N'Yanacancha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1268, N'130000', N'La Libertad', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1269, N'130100', N'La Libertad', N'Trujillo ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1270, N'130101', N'La Libertad', N'Trujillo ', N'Trujillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1271, N'130102', N'La Libertad', N'Trujillo ', N'El Porvenir')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1272, N'130103', N'La Libertad', N'Trujillo ', N'Florencia de Mora')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1273, N'130104', N'La Libertad', N'Trujillo ', N'Huanchaco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1274, N'130105', N'La Libertad', N'Trujillo ', N'La Esperanza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1275, N'130106', N'La Libertad', N'Trujillo ', N'Laredo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1276, N'130107', N'La Libertad', N'Trujillo ', N'Moche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1277, N'130108', N'La Libertad', N'Trujillo ', N'Poroto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1278, N'130109', N'La Libertad', N'Trujillo ', N'Salaverry')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1279, N'130110', N'La Libertad', N'Trujillo ', N'Simbal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1280, N'130111', N'La Libertad', N'Trujillo ', N'Victor Larco Herrera')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1281, N'130200', N'La Libertad', N'Ascope ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1282, N'130201', N'La Libertad', N'Ascope ', N'Ascope')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1283, N'130202', N'La Libertad', N'Ascope ', N'Chicama')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1284, N'130203', N'La Libertad', N'Ascope ', N'Chocope')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1285, N'130204', N'La Libertad', N'Ascope ', N'Magdalena de Cao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1286, N'130205', N'La Libertad', N'Ascope ', N'Paijan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1287, N'130206', N'La Libertad', N'Ascope ', N'Rázuri')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1288, N'130207', N'La Libertad', N'Ascope ', N'Santiago de Cao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1289, N'130208', N'La Libertad', N'Ascope ', N'Casa Grande')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1290, N'130300', N'La Libertad', N'Bolívar ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1291, N'130301', N'La Libertad', N'Bolívar ', N'Bolívar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1292, N'130302', N'La Libertad', N'Bolívar ', N'Bambamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1293, N'130303', N'La Libertad', N'Bolívar ', N'Condormarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1294, N'130304', N'La Libertad', N'Bolívar ', N'Longotea')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1295, N'130305', N'La Libertad', N'Bolívar ', N'Uchumarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1296, N'130306', N'La Libertad', N'Bolívar ', N'Ucuncha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1297, N'130400', N'La Libertad', N'Chepén ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1298, N'130401', N'La Libertad', N'Chepén ', N'Chepen')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1299, N'130402', N'La Libertad', N'Chepén ', N'Pacanga')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1300, N'130403', N'La Libertad', N'Chepén ', N'Pueblo Nuevo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1301, N'130500', N'La Libertad', N'Julcán ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1302, N'130501', N'La Libertad', N'Julcán ', N'Julcan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1303, N'130502', N'La Libertad', N'Julcán ', N'Calamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1304, N'130503', N'La Libertad', N'Julcán ', N'Carabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1305, N'130504', N'La Libertad', N'Julcán ', N'Huaso')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1306, N'130600', N'La Libertad', N'Otuzco ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1307, N'130601', N'La Libertad', N'Otuzco ', N'Otuzco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1308, N'130602', N'La Libertad', N'Otuzco ', N'Agallpampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1309, N'130604', N'La Libertad', N'Otuzco ', N'Charat')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1310, N'130605', N'La Libertad', N'Otuzco ', N'Huaranchal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1311, N'130606', N'La Libertad', N'Otuzco ', N'La Cuesta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1312, N'130608', N'La Libertad', N'Otuzco ', N'Mache')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1313, N'130610', N'La Libertad', N'Otuzco ', N'Paranday')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1314, N'130611', N'La Libertad', N'Otuzco ', N'Salpo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1315, N'130613', N'La Libertad', N'Otuzco ', N'Sinsicap')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1316, N'130614', N'La Libertad', N'Otuzco ', N'Usquil')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1317, N'130700', N'La Libertad', N'Pacasmayo ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1318, N'130701', N'La Libertad', N'Pacasmayo ', N'San Pedro de Lloc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1319, N'130702', N'La Libertad', N'Pacasmayo ', N'Guadalupe')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1320, N'130703', N'La Libertad', N'Pacasmayo ', N'Jequetepeque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1321, N'130704', N'La Libertad', N'Pacasmayo ', N'Pacasmayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1322, N'130705', N'La Libertad', N'Pacasmayo ', N'San José')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1323, N'130800', N'La Libertad', N'Pataz ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1324, N'130801', N'La Libertad', N'Pataz ', N'Tayabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1325, N'130802', N'La Libertad', N'Pataz ', N'Buldibuyo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1326, N'130803', N'La Libertad', N'Pataz ', N'Chillia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1327, N'130804', N'La Libertad', N'Pataz ', N'Huancaspata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1328, N'130805', N'La Libertad', N'Pataz ', N'Huaylillas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1329, N'130806', N'La Libertad', N'Pataz ', N'Huayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1330, N'130807', N'La Libertad', N'Pataz ', N'Ongon')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1331, N'130808', N'La Libertad', N'Pataz ', N'Parcoy')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1332, N'130809', N'La Libertad', N'Pataz ', N'Pataz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1333, N'130810', N'La Libertad', N'Pataz ', N'Pias')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1334, N'130811', N'La Libertad', N'Pataz ', N'Santiago de Challas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1335, N'130812', N'La Libertad', N'Pataz ', N'Taurija')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1336, N'130813', N'La Libertad', N'Pataz ', N'Urpay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1337, N'130900', N'La Libertad', N'Sánchez Carrión ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1338, N'130901', N'La Libertad', N'Sánchez Carrión ', N'Huamachuco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1339, N'130902', N'La Libertad', N'Sánchez Carrión ', N'Chugay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1340, N'130903', N'La Libertad', N'Sánchez Carrión ', N'Cochorco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1341, N'130904', N'La Libertad', N'Sánchez Carrión ', N'Curgos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1342, N'130905', N'La Libertad', N'Sánchez Carrión ', N'Marcabal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1343, N'130906', N'La Libertad', N'Sánchez Carrión ', N'Sanagoran')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1344, N'130907', N'La Libertad', N'Sánchez Carrión ', N'Sarin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1345, N'130908', N'La Libertad', N'Sánchez Carrión ', N'Sartimbamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1346, N'131000', N'La Libertad', N'Santiago de Chuco ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1347, N'131001', N'La Libertad', N'Santiago de Chuco ', N'Santiago de Chuco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1348, N'131002', N'La Libertad', N'Santiago de Chuco ', N'Angasmarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1349, N'131003', N'La Libertad', N'Santiago de Chuco ', N'Cachicadan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1350, N'131004', N'La Libertad', N'Santiago de Chuco ', N'Mollebamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1351, N'131005', N'La Libertad', N'Santiago de Chuco ', N'Mollepata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1352, N'131006', N'La Libertad', N'Santiago de Chuco ', N'Quiruvilca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1353, N'131007', N'La Libertad', N'Santiago de Chuco ', N'Santa Cruz de Chuca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1354, N'131008', N'La Libertad', N'Santiago de Chuco ', N'Sitabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1355, N'131100', N'La Libertad', N'Gran Chimú ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1356, N'131101', N'La Libertad', N'Gran Chimú ', N'Cascas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1357, N'131102', N'La Libertad', N'Gran Chimú ', N'Lucma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1358, N'131103', N'La Libertad', N'Gran Chimú ', N'Marmot')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1359, N'131104', N'La Libertad', N'Gran Chimú ', N'Sayapullo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1360, N'131200', N'La Libertad', N'Virú ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1361, N'131201', N'La Libertad', N'Virú ', N'Viru')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1362, N'131202', N'La Libertad', N'Virú ', N'Chao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1363, N'131203', N'La Libertad', N'Virú ', N'Guadalupito')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1364, N'140000', N'Lambayeque', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1365, N'140100', N'Lambayeque', N'Chiclayo ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1366, N'140101', N'Lambayeque', N'Chiclayo ', N'Chiclayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1367, N'140102', N'Lambayeque', N'Chiclayo ', N'Chongoyape')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1368, N'140103', N'Lambayeque', N'Chiclayo ', N'Eten')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1369, N'140104', N'Lambayeque', N'Chiclayo ', N'Eten Puerto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1370, N'140105', N'Lambayeque', N'Chiclayo ', N'José Leonardo Ortiz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1371, N'140106', N'Lambayeque', N'Chiclayo ', N'La Victoria')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1372, N'140107', N'Lambayeque', N'Chiclayo ', N'Lagunas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1373, N'140108', N'Lambayeque', N'Chiclayo ', N'Monsefu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1374, N'140109', N'Lambayeque', N'Chiclayo ', N'Nueva Arica')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1375, N'140110', N'Lambayeque', N'Chiclayo ', N'Oyotun')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1376, N'140111', N'Lambayeque', N'Chiclayo ', N'Picsi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1377, N'140112', N'Lambayeque', N'Chiclayo ', N'Pimentel')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1378, N'140113', N'Lambayeque', N'Chiclayo ', N'Reque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1379, N'140114', N'Lambayeque', N'Chiclayo ', N'Santa Rosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1380, N'140115', N'Lambayeque', N'Chiclayo ', N'Saña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1381, N'140116', N'Lambayeque', N'Chiclayo ', N'Cayalti')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1382, N'140117', N'Lambayeque', N'Chiclayo ', N'Patapo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1383, N'140118', N'Lambayeque', N'Chiclayo ', N'Pomalca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1384, N'140119', N'Lambayeque', N'Chiclayo ', N'Pucala')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1385, N'140120', N'Lambayeque', N'Chiclayo ', N'Tuman')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1386, N'140200', N'Lambayeque', N'Ferreñafe ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1387, N'140201', N'Lambayeque', N'Ferreñafe ', N'Ferreñafe')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1388, N'140202', N'Lambayeque', N'Ferreñafe ', N'Cañaris')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1389, N'140203', N'Lambayeque', N'Ferreñafe ', N'Incahuasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1390, N'140204', N'Lambayeque', N'Ferreñafe ', N'Manuel Antonio Mesones Muro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1391, N'140205', N'Lambayeque', N'Ferreñafe ', N'Pitipo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1392, N'140206', N'Lambayeque', N'Ferreñafe ', N'Pueblo Nuevo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1393, N'140300', N'Lambayeque', N'Lambayeque ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1394, N'140301', N'Lambayeque', N'Lambayeque ', N'Lambayeque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1395, N'140302', N'Lambayeque', N'Lambayeque ', N'Chochope')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1396, N'140303', N'Lambayeque', N'Lambayeque ', N'Illimo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1397, N'140304', N'Lambayeque', N'Lambayeque ', N'Jayanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1398, N'140305', N'Lambayeque', N'Lambayeque ', N'Mochumi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1399, N'140306', N'Lambayeque', N'Lambayeque ', N'Morrope')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1400, N'140307', N'Lambayeque', N'Lambayeque ', N'Motupe')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1401, N'140308', N'Lambayeque', N'Lambayeque ', N'Olmos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1402, N'140309', N'Lambayeque', N'Lambayeque ', N'Pacora')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1403, N'140310', N'Lambayeque', N'Lambayeque ', N'Salas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1404, N'140311', N'Lambayeque', N'Lambayeque ', N'San José')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1405, N'140312', N'Lambayeque', N'Lambayeque ', N'Tucume')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1406, N'150000', N'Lima', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1407, N'150100', N'Lima', N'Lima ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1408, N'150101', N'Lima', N'Lima ', N'Lima')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1409, N'150102', N'Lima', N'Lima ', N'Ancón')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1410, N'150103', N'Lima', N'Lima ', N'Ate')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1411, N'150104', N'Lima', N'Lima ', N'Barranco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1412, N'150105', N'Lima', N'Lima ', N'Breña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1413, N'150106', N'Lima', N'Lima ', N'Carabayllo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1414, N'150107', N'Lima', N'Lima ', N'Chaclacayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1415, N'150108', N'Lima', N'Lima ', N'Chorrillos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1416, N'150109', N'Lima', N'Lima ', N'Cieneguilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1417, N'150110', N'Lima', N'Lima ', N'Comas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1418, N'150111', N'Lima', N'Lima ', N'El Agustino')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1419, N'150112', N'Lima', N'Lima ', N'Independencia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1420, N'150113', N'Lima', N'Lima ', N'Jesús María')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1421, N'150114', N'Lima', N'Lima ', N'La Molina')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1422, N'150115', N'Lima', N'Lima ', N'La Victoria')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1423, N'150116', N'Lima', N'Lima ', N'Lince')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1424, N'150117', N'Lima', N'Lima ', N'Los Olivos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1425, N'150118', N'Lima', N'Lima ', N'Lurigancho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1426, N'150119', N'Lima', N'Lima ', N'Lurin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1427, N'150120', N'Lima', N'Lima ', N'Magdalena del Mar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1428, N'150121', N'Lima', N'Lima ', N'Pueblo Libre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1429, N'150122', N'Lima', N'Lima ', N'Miraflores')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1430, N'150123', N'Lima', N'Lima ', N'Pachacamac')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1431, N'150124', N'Lima', N'Lima ', N'Pucusana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1432, N'150125', N'Lima', N'Lima ', N'Puente Piedra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1433, N'150126', N'Lima', N'Lima ', N'Punta Hermosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1434, N'150127', N'Lima', N'Lima ', N'Punta Negra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1435, N'150128', N'Lima', N'Lima ', N'Rímac')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1436, N'150129', N'Lima', N'Lima ', N'San Bartolo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1437, N'150130', N'Lima', N'Lima ', N'San Borja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1438, N'150131', N'Lima', N'Lima ', N'San Isidro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1439, N'150132', N'Lima', N'Lima ', N'San Juan de Lurigancho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1440, N'150133', N'Lima', N'Lima ', N'San Juan de Miraflores')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1441, N'150134', N'Lima', N'Lima ', N'San Luis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1442, N'150135', N'Lima', N'Lima ', N'San Martín de Porres')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1443, N'150136', N'Lima', N'Lima ', N'San Miguel')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1444, N'150137', N'Lima', N'Lima ', N'Santa Anita')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1445, N'150138', N'Lima', N'Lima ', N'Santa María del Mar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1446, N'150139', N'Lima', N'Lima ', N'Santa Rosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1447, N'150140', N'Lima', N'Lima ', N'Santiago de Surco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1448, N'150141', N'Lima', N'Lima ', N'Surquillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1449, N'150142', N'Lima', N'Lima ', N'Villa El Salvador')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1450, N'150143', N'Lima', N'Lima ', N'Villa María del Triunfo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1451, N'150200', N'Lima', N'Barranca ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1452, N'150201', N'Lima', N'Barranca ', N'Barranca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1453, N'150202', N'Lima', N'Barranca ', N'Paramonga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1454, N'150203', N'Lima', N'Barranca ', N'Pativilca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1455, N'150204', N'Lima', N'Barranca ', N'Supe')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1456, N'150205', N'Lima', N'Barranca ', N'Supe Puerto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1457, N'150300', N'Lima', N'Cajatambo ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1458, N'150301', N'Lima', N'Cajatambo ', N'Cajatambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1459, N'150302', N'Lima', N'Cajatambo ', N'Copa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1460, N'150303', N'Lima', N'Cajatambo ', N'Gorgor')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1461, N'150304', N'Lima', N'Cajatambo ', N'Huancapon')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1462, N'150305', N'Lima', N'Cajatambo ', N'Manas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1463, N'150400', N'Lima', N'Canta ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1464, N'150401', N'Lima', N'Canta ', N'Canta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1465, N'150402', N'Lima', N'Canta ', N'Arahuay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1466, N'150403', N'Lima', N'Canta ', N'Huamantanga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1467, N'150404', N'Lima', N'Canta ', N'Huaros')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1468, N'150405', N'Lima', N'Canta ', N'Lachaqui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1469, N'150406', N'Lima', N'Canta ', N'San Buenaventura')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1470, N'150407', N'Lima', N'Canta ', N'Santa Rosa de Quives')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1471, N'150500', N'Lima', N'Cañete ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1472, N'150501', N'Lima', N'Cañete ', N'San Vicente de Cañete')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1473, N'150502', N'Lima', N'Cañete ', N'Asia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1474, N'150503', N'Lima', N'Cañete ', N'Calango')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1475, N'150504', N'Lima', N'Cañete ', N'Cerro Azul')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1476, N'150505', N'Lima', N'Cañete ', N'Chilca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1477, N'150506', N'Lima', N'Cañete ', N'Coayllo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1478, N'150507', N'Lima', N'Cañete ', N'Imperial')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1479, N'150508', N'Lima', N'Cañete ', N'Lunahuana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1480, N'150509', N'Lima', N'Cañete ', N'Mala')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1481, N'150510', N'Lima', N'Cañete ', N'Nuevo Imperial')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1482, N'150511', N'Lima', N'Cañete ', N'Pacaran')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1483, N'150512', N'Lima', N'Cañete ', N'Quilmana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1484, N'150513', N'Lima', N'Cañete ', N'San Antonio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1485, N'150514', N'Lima', N'Cañete ', N'San Luis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1486, N'150515', N'Lima', N'Cañete ', N'Santa Cruz de Flores')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1487, N'150516', N'Lima', N'Cañete ', N'Zúñiga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1488, N'150600', N'Lima', N'Huaral ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1489, N'150601', N'Lima', N'Huaral ', N'Huaral')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1490, N'150602', N'Lima', N'Huaral ', N'Atavillos Alto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1491, N'150603', N'Lima', N'Huaral ', N'Atavillos Bajo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1492, N'150604', N'Lima', N'Huaral ', N'Aucallama')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1493, N'150605', N'Lima', N'Huaral ', N'Chancay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1494, N'150606', N'Lima', N'Huaral ', N'Ihuari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1495, N'150607', N'Lima', N'Huaral ', N'Lampian')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1496, N'150608', N'Lima', N'Huaral ', N'Pacaraos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1497, N'150609', N'Lima', N'Huaral ', N'San Miguel de Acos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1498, N'150610', N'Lima', N'Huaral ', N'Santa Cruz de Andamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1499, N'150611', N'Lima', N'Huaral ', N'Sumbilca')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1500, N'150612', N'Lima', N'Huaral ', N'Veintisiete de Noviembre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1501, N'150700', N'Lima', N'Huarochirí ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1502, N'150701', N'Lima', N'Huarochirí ', N'Matucana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1503, N'150702', N'Lima', N'Huarochirí ', N'Antioquia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1504, N'150703', N'Lima', N'Huarochirí ', N'Callahuanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1505, N'150704', N'Lima', N'Huarochirí ', N'Carampoma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1506, N'150705', N'Lima', N'Huarochirí ', N'Chicla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1507, N'150706', N'Lima', N'Huarochirí ', N'Cuenca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1508, N'150707', N'Lima', N'Huarochirí ', N'Huachupampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1509, N'150708', N'Lima', N'Huarochirí ', N'Huanza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1510, N'150709', N'Lima', N'Huarochirí ', N'Huarochiri')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1511, N'150710', N'Lima', N'Huarochirí ', N'Lahuaytambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1512, N'150711', N'Lima', N'Huarochirí ', N'Langa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1513, N'150712', N'Lima', N'Huarochirí ', N'Laraos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1514, N'150713', N'Lima', N'Huarochirí ', N'Mariatana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1515, N'150714', N'Lima', N'Huarochirí ', N'Ricardo Palma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1516, N'150715', N'Lima', N'Huarochirí ', N'San Andrés de Tupicocha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1517, N'150716', N'Lima', N'Huarochirí ', N'San Antonio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1518, N'150717', N'Lima', N'Huarochirí ', N'San Bartolomé')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1519, N'150718', N'Lima', N'Huarochirí ', N'San Damian')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1520, N'150719', N'Lima', N'Huarochirí ', N'San Juan de Iris')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1521, N'150720', N'Lima', N'Huarochirí ', N'San Juan de Tantaranche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1522, N'150721', N'Lima', N'Huarochirí ', N'San Lorenzo de Quinti')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1523, N'150722', N'Lima', N'Huarochirí ', N'San Mateo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1524, N'150723', N'Lima', N'Huarochirí ', N'San Mateo de Otao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1525, N'150724', N'Lima', N'Huarochirí ', N'San Pedro de Casta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1526, N'150725', N'Lima', N'Huarochirí ', N'San Pedro de Huancayre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1527, N'150726', N'Lima', N'Huarochirí ', N'Sangallaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1528, N'150727', N'Lima', N'Huarochirí ', N'Santa Cruz de Cocachacra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1529, N'150728', N'Lima', N'Huarochirí ', N'Santa Eulalia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1530, N'150729', N'Lima', N'Huarochirí ', N'Santiago de Anchucaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1531, N'150730', N'Lima', N'Huarochirí ', N'Santiago de Tuna')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1532, N'150731', N'Lima', N'Huarochirí ', N'Santo Domingo de Los Olleros')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1533, N'150732', N'Lima', N'Huarochirí ', N'Surco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1534, N'150800', N'Lima', N'Huaura ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1535, N'150801', N'Lima', N'Huaura ', N'Huacho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1536, N'150802', N'Lima', N'Huaura ', N'Ambar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1537, N'150803', N'Lima', N'Huaura ', N'Caleta de Carquin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1538, N'150804', N'Lima', N'Huaura ', N'Checras')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1539, N'150805', N'Lima', N'Huaura ', N'Hualmay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1540, N'150806', N'Lima', N'Huaura ', N'Huaura')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1541, N'150807', N'Lima', N'Huaura ', N'Leoncio Prado')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1542, N'150808', N'Lima', N'Huaura ', N'Paccho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1543, N'150809', N'Lima', N'Huaura ', N'Santa Leonor')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1544, N'150810', N'Lima', N'Huaura ', N'Santa María')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1545, N'150811', N'Lima', N'Huaura ', N'Sayan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1546, N'150812', N'Lima', N'Huaura ', N'Vegueta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1547, N'150900', N'Lima', N'Oyón ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1548, N'150901', N'Lima', N'Oyón ', N'Oyon')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1549, N'150902', N'Lima', N'Oyón ', N'Andajes')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1550, N'150903', N'Lima', N'Oyón ', N'Caujul')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1551, N'150904', N'Lima', N'Oyón ', N'Cochamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1552, N'150905', N'Lima', N'Oyón ', N'Navan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1553, N'150906', N'Lima', N'Oyón ', N'Pachangara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1554, N'151000', N'Lima', N'Yauyos ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1555, N'151001', N'Lima', N'Yauyos ', N'Yauyos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1556, N'151002', N'Lima', N'Yauyos ', N'Alis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1557, N'151003', N'Lima', N'Yauyos ', N'Allauca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1558, N'151004', N'Lima', N'Yauyos ', N'Ayaviri')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1559, N'151005', N'Lima', N'Yauyos ', N'Azángaro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1560, N'151006', N'Lima', N'Yauyos ', N'Cacra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1561, N'151007', N'Lima', N'Yauyos ', N'Carania')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1562, N'151008', N'Lima', N'Yauyos ', N'Catahuasi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1563, N'151009', N'Lima', N'Yauyos ', N'Chocos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1564, N'151010', N'Lima', N'Yauyos ', N'Cochas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1565, N'151011', N'Lima', N'Yauyos ', N'Colonia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1566, N'151012', N'Lima', N'Yauyos ', N'Hongos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1567, N'151013', N'Lima', N'Yauyos ', N'Huampara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1568, N'151014', N'Lima', N'Yauyos ', N'Huancaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1569, N'151015', N'Lima', N'Yauyos ', N'Huangascar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1570, N'151016', N'Lima', N'Yauyos ', N'Huantan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1571, N'151017', N'Lima', N'Yauyos ', N'Huañec')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1572, N'151018', N'Lima', N'Yauyos ', N'Laraos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1573, N'151019', N'Lima', N'Yauyos ', N'Lincha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1574, N'151020', N'Lima', N'Yauyos ', N'Madean')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1575, N'151021', N'Lima', N'Yauyos ', N'Miraflores')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1576, N'151022', N'Lima', N'Yauyos ', N'Omas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1577, N'151023', N'Lima', N'Yauyos ', N'Putinza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1578, N'151024', N'Lima', N'Yauyos ', N'Quinches')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1579, N'151025', N'Lima', N'Yauyos ', N'Quinocay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1580, N'151026', N'Lima', N'Yauyos ', N'San Joaquín')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1581, N'151027', N'Lima', N'Yauyos ', N'San Pedro de Pilas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1582, N'151028', N'Lima', N'Yauyos ', N'Tanta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1583, N'151029', N'Lima', N'Yauyos ', N'Tauripampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1584, N'151030', N'Lima', N'Yauyos ', N'Tomas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1585, N'151031', N'Lima', N'Yauyos ', N'Tupe')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1586, N'151032', N'Lima', N'Yauyos ', N'Viñac')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1587, N'151033', N'Lima', N'Yauyos ', N'Vitis')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1588, N'160000', N'Loreto', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1589, N'160100', N'Loreto', N'Maynas ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1590, N'160101', N'Loreto', N'Maynas ', N'Iquitos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1591, N'160102', N'Loreto', N'Maynas ', N'Alto Nanay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1592, N'160103', N'Loreto', N'Maynas ', N'Fernando Lores')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1593, N'160104', N'Loreto', N'Maynas ', N'Indiana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1594, N'160105', N'Loreto', N'Maynas ', N'Las Amazonas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1595, N'160106', N'Loreto', N'Maynas ', N'Mazan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1596, N'160107', N'Loreto', N'Maynas ', N'Napo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1597, N'160108', N'Loreto', N'Maynas ', N'Punchana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1598, N'160110', N'Loreto', N'Maynas ', N'Torres Causana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1599, N'160112', N'Loreto', N'Maynas ', N'Belén')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1600, N'160113', N'Loreto', N'Maynas ', N'San Juan Bautista')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1601, N'160200', N'Loreto', N'Alto Amazonas ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1602, N'160201', N'Loreto', N'Alto Amazonas ', N'Yurimaguas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1603, N'160202', N'Loreto', N'Alto Amazonas ', N'Balsapuerto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1604, N'160205', N'Loreto', N'Alto Amazonas ', N'Jeberos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1605, N'160206', N'Loreto', N'Alto Amazonas ', N'Lagunas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1606, N'160210', N'Loreto', N'Alto Amazonas ', N'Santa Cruz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1607, N'160211', N'Loreto', N'Alto Amazonas ', N'Teniente Cesar López Rojas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1608, N'160300', N'Loreto', N'Loreto ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1609, N'160301', N'Loreto', N'Loreto ', N'Nauta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1610, N'160302', N'Loreto', N'Loreto ', N'Parinari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1611, N'160303', N'Loreto', N'Loreto ', N'Tigre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1612, N'160304', N'Loreto', N'Loreto ', N'Trompeteros')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1613, N'160305', N'Loreto', N'Loreto ', N'Urarinas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1614, N'160400', N'Loreto', N'Mariscal Ramón Castilla ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1615, N'160401', N'Loreto', N'Mariscal Ramón Castilla ', N'Ramón Castilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1616, N'160402', N'Loreto', N'Mariscal Ramón Castilla ', N'Pebas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1617, N'160403', N'Loreto', N'Mariscal Ramón Castilla ', N'Yavari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1618, N'160404', N'Loreto', N'Mariscal Ramón Castilla ', N'San Pablo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1619, N'160500', N'Loreto', N'Requena ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1620, N'160501', N'Loreto', N'Requena ', N'Requena')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1621, N'160502', N'Loreto', N'Requena ', N'Alto Tapiche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1622, N'160503', N'Loreto', N'Requena ', N'Capelo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1623, N'160504', N'Loreto', N'Requena ', N'Emilio San Martín')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1624, N'160505', N'Loreto', N'Requena ', N'Maquia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1625, N'160506', N'Loreto', N'Requena ', N'Puinahua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1626, N'160507', N'Loreto', N'Requena ', N'Saquena')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1627, N'160508', N'Loreto', N'Requena ', N'Soplin')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1628, N'160509', N'Loreto', N'Requena ', N'Tapiche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1629, N'160510', N'Loreto', N'Requena ', N'Jenaro Herrera')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1630, N'160511', N'Loreto', N'Requena ', N'Yaquerana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1631, N'160600', N'Loreto', N'Ucayali ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1632, N'160601', N'Loreto', N'Ucayali ', N'Contamana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1633, N'160602', N'Loreto', N'Ucayali ', N'Inahuaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1634, N'160603', N'Loreto', N'Ucayali ', N'Padre Márquez')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1635, N'160604', N'Loreto', N'Ucayali ', N'Pampa Hermosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1636, N'160605', N'Loreto', N'Ucayali ', N'Sarayacu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1637, N'160606', N'Loreto', N'Ucayali ', N'Vargas Guerra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1638, N'160700', N'Loreto', N'Datem del Marañón ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1639, N'160701', N'Loreto', N'Datem del Marañón ', N'Barranca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1640, N'160702', N'Loreto', N'Datem del Marañón ', N'Cahuapanas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1641, N'160703', N'Loreto', N'Datem del Marañón ', N'Manseriche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1642, N'160704', N'Loreto', N'Datem del Marañón ', N'Morona')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1643, N'160705', N'Loreto', N'Datem del Marañón ', N'Pastaza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1644, N'160706', N'Loreto', N'Datem del Marañón ', N'Andoas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1645, N'160800', N'Loreto', N'Putumayo', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1646, N'160801', N'Loreto', N'Putumayo', N'Putumayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1647, N'160802', N'Loreto', N'Putumayo', N'Rosa Panduro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1648, N'160803', N'Loreto', N'Putumayo', N'Teniente Manuel Clavero')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1649, N'160804', N'Loreto', N'Putumayo', N'Yaguas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1650, N'170000', N'Madre de Dios', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1651, N'170100', N'Madre de Dios', N'Tambopata ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1652, N'170101', N'Madre de Dios', N'Tambopata ', N'Tambopata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1653, N'170102', N'Madre de Dios', N'Tambopata ', N'Inambari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1654, N'170103', N'Madre de Dios', N'Tambopata ', N'Las Piedras')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1655, N'170104', N'Madre de Dios', N'Tambopata ', N'Laberinto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1656, N'170200', N'Madre de Dios', N'Manu ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1657, N'170201', N'Madre de Dios', N'Manu ', N'Manu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1658, N'170202', N'Madre de Dios', N'Manu ', N'Fitzcarrald')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1659, N'170203', N'Madre de Dios', N'Manu ', N'Madre de Dios')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1660, N'170204', N'Madre de Dios', N'Manu ', N'Huepetuhe')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1661, N'170300', N'Madre de Dios', N'Tahuamanu ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1662, N'170301', N'Madre de Dios', N'Tahuamanu ', N'Iñapari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1663, N'170302', N'Madre de Dios', N'Tahuamanu ', N'Iberia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1664, N'170303', N'Madre de Dios', N'Tahuamanu ', N'Tahuamanu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1665, N'180000', N'Moquegua', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1666, N'180100', N'Moquegua', N'Mariscal Nieto ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1667, N'180101', N'Moquegua', N'Mariscal Nieto ', N'Moquegua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1668, N'180102', N'Moquegua', N'Mariscal Nieto ', N'Carumas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1669, N'180103', N'Moquegua', N'Mariscal Nieto ', N'Cuchumbaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1670, N'180104', N'Moquegua', N'Mariscal Nieto ', N'Samegua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1671, N'180105', N'Moquegua', N'Mariscal Nieto ', N'San Cristóbal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1672, N'180106', N'Moquegua', N'Mariscal Nieto ', N'Torata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1673, N'180200', N'Moquegua', N'General Sánchez Cerro ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1674, N'180201', N'Moquegua', N'General Sánchez Cerro ', N'Omate')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1675, N'180202', N'Moquegua', N'General Sánchez Cerro ', N'Chojata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1676, N'180203', N'Moquegua', N'General Sánchez Cerro ', N'Coalaque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1677, N'180204', N'Moquegua', N'General Sánchez Cerro ', N'Ichuña')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1678, N'180205', N'Moquegua', N'General Sánchez Cerro ', N'La Capilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1679, N'180206', N'Moquegua', N'General Sánchez Cerro ', N'Lloque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1680, N'180207', N'Moquegua', N'General Sánchez Cerro ', N'Matalaque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1681, N'180208', N'Moquegua', N'General Sánchez Cerro ', N'Puquina')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1682, N'180209', N'Moquegua', N'General Sánchez Cerro ', N'Quinistaquillas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1683, N'180210', N'Moquegua', N'General Sánchez Cerro ', N'Ubinas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1684, N'180211', N'Moquegua', N'General Sánchez Cerro ', N'Yunga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1685, N'180300', N'Moquegua', N'Ilo ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1686, N'180301', N'Moquegua', N'Ilo ', N'Ilo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1687, N'180302', N'Moquegua', N'Ilo ', N'El Algarrobal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1688, N'180303', N'Moquegua', N'Ilo ', N'Pacocha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1689, N'190000', N'Pasco', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1690, N'190100', N'Pasco', N'Pasco ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1691, N'190101', N'Pasco', N'Pasco ', N'Chaupimarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1692, N'190102', N'Pasco', N'Pasco ', N'Huachon')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1693, N'190103', N'Pasco', N'Pasco ', N'Huariaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1694, N'190104', N'Pasco', N'Pasco ', N'Huayllay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1695, N'190105', N'Pasco', N'Pasco ', N'Ninacaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1696, N'190106', N'Pasco', N'Pasco ', N'Pallanchacra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1697, N'190107', N'Pasco', N'Pasco ', N'Paucartambo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1698, N'190108', N'Pasco', N'Pasco ', N'San Francisco de Asís de Yarusyacan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1699, N'190109', N'Pasco', N'Pasco ', N'Simon Bolívar')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1700, N'190110', N'Pasco', N'Pasco ', N'Ticlacayan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1701, N'190111', N'Pasco', N'Pasco ', N'Tinyahuarco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1702, N'190112', N'Pasco', N'Pasco ', N'Vicco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1703, N'190113', N'Pasco', N'Pasco ', N'Yanacancha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1704, N'190200', N'Pasco', N'Daniel Alcides Carrión ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1705, N'190201', N'Pasco', N'Daniel Alcides Carrión ', N'Yanahuanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1706, N'190202', N'Pasco', N'Daniel Alcides Carrión ', N'Chacayan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1707, N'190203', N'Pasco', N'Daniel Alcides Carrión ', N'Goyllarisquizga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1708, N'190204', N'Pasco', N'Daniel Alcides Carrión ', N'Paucar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1709, N'190205', N'Pasco', N'Daniel Alcides Carrión ', N'San Pedro de Pillao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1710, N'190206', N'Pasco', N'Daniel Alcides Carrión ', N'Santa Ana de Tusi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1711, N'190207', N'Pasco', N'Daniel Alcides Carrión ', N'Tapuc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1712, N'190208', N'Pasco', N'Daniel Alcides Carrión ', N'Vilcabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1713, N'190300', N'Pasco', N'Oxapampa ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1714, N'190301', N'Pasco', N'Oxapampa ', N'Oxapampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1715, N'190302', N'Pasco', N'Oxapampa ', N'Chontabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1716, N'190303', N'Pasco', N'Oxapampa ', N'Huancabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1717, N'190304', N'Pasco', N'Oxapampa ', N'Palcazu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1718, N'190305', N'Pasco', N'Oxapampa ', N'Pozuzo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1719, N'190306', N'Pasco', N'Oxapampa ', N'Puerto Bermúdez')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1720, N'190307', N'Pasco', N'Oxapampa ', N'Villa Rica')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1721, N'190308', N'Pasco', N'Oxapampa ', N'Constitución')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1722, N'200000', N'Piura', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1723, N'200100', N'Piura', N'Piura ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1724, N'200101', N'Piura', N'Piura ', N'Piura')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1725, N'200104', N'Piura', N'Piura ', N'Castilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1726, N'200105', N'Piura', N'Piura ', N'Atacaos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1727, N'200107', N'Piura', N'Piura ', N'Cura Mori')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1728, N'200108', N'Piura', N'Piura ', N'El Tallan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1729, N'200109', N'Piura', N'Piura ', N'La Arena')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1730, N'200110', N'Piura', N'Piura ', N'La Unión')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1731, N'200111', N'Piura', N'Piura ', N'Las Lomas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1732, N'200114', N'Piura', N'Piura ', N'Tambo Grande')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1733, N'200115', N'Piura', N'Piura ', N'Veintiseis de Octubre')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1734, N'200200', N'Piura', N'Ayabaca ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1735, N'200201', N'Piura', N'Ayabaca ', N'Ayabaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1736, N'200202', N'Piura', N'Ayabaca ', N'Frias')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1737, N'200203', N'Piura', N'Ayabaca ', N'Jilili')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1738, N'200204', N'Piura', N'Ayabaca ', N'Lagunas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1739, N'200205', N'Piura', N'Ayabaca ', N'Montero')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1740, N'200206', N'Piura', N'Ayabaca ', N'Pacaipampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1741, N'200207', N'Piura', N'Ayabaca ', N'Paimas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1742, N'200208', N'Piura', N'Ayabaca ', N'Sapillica')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1743, N'200209', N'Piura', N'Ayabaca ', N'Sicchez')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1744, N'200210', N'Piura', N'Ayabaca ', N'Suyo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1745, N'200300', N'Piura', N'Huancabamba ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1746, N'200301', N'Piura', N'Huancabamba ', N'Huancabamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1747, N'200302', N'Piura', N'Huancabamba ', N'Canchaque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1748, N'200303', N'Piura', N'Huancabamba ', N'El Carmen de la Frontera')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1749, N'200304', N'Piura', N'Huancabamba ', N'Huarmaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1750, N'200305', N'Piura', N'Huancabamba ', N'Lalaquiz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1751, N'200306', N'Piura', N'Huancabamba ', N'San Miguel de El Faique')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1752, N'200307', N'Piura', N'Huancabamba ', N'Sondor')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1753, N'200308', N'Piura', N'Huancabamba ', N'Sondorillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1754, N'200400', N'Piura', N'Morropón ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1755, N'200401', N'Piura', N'Morropón ', N'Chulucanas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1756, N'200402', N'Piura', N'Morropón ', N'Buenos Aires')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1757, N'200403', N'Piura', N'Morropón ', N'Chalaco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1758, N'200404', N'Piura', N'Morropón ', N'La Matanza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1759, N'200405', N'Piura', N'Morropón ', N'Morropon')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1760, N'200406', N'Piura', N'Morropón ', N'Salitral')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1761, N'200407', N'Piura', N'Morropón ', N'San Juan de Bigote')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1762, N'200408', N'Piura', N'Morropón ', N'Santa Catalina de Mossa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1763, N'200409', N'Piura', N'Morropón ', N'Santo Domingo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1764, N'200410', N'Piura', N'Morropón ', N'Yamango')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1765, N'200500', N'Piura', N'Paita ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1766, N'200501', N'Piura', N'Paita ', N'Paita')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1767, N'200502', N'Piura', N'Paita ', N'Amotape')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1768, N'200503', N'Piura', N'Paita ', N'Arenal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1769, N'200504', N'Piura', N'Paita ', N'Colan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1770, N'200505', N'Piura', N'Paita ', N'La Huaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1771, N'200506', N'Piura', N'Paita ', N'Tamarindo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1772, N'200507', N'Piura', N'Paita ', N'Vichayal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1773, N'200600', N'Piura', N'Sullana ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1774, N'200601', N'Piura', N'Sullana ', N'Sullana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1775, N'200602', N'Piura', N'Sullana ', N'Bellavista')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1776, N'200603', N'Piura', N'Sullana ', N'Ignacio Escudero')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1777, N'200604', N'Piura', N'Sullana ', N'Lancones')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1778, N'200605', N'Piura', N'Sullana ', N'Marcavelica')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1779, N'200606', N'Piura', N'Sullana ', N'Miguel Checa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1780, N'200607', N'Piura', N'Sullana ', N'Querecotillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1781, N'200608', N'Piura', N'Sullana ', N'Salitral')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1782, N'200700', N'Piura', N'Talara ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1783, N'200701', N'Piura', N'Talara ', N'Pariñas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1784, N'200702', N'Piura', N'Talara ', N'El Alto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1785, N'200703', N'Piura', N'Talara ', N'La Brea')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1786, N'200704', N'Piura', N'Talara ', N'Lobitos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1787, N'200705', N'Piura', N'Talara ', N'Los Organos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1788, N'200706', N'Piura', N'Talara ', N'Mancora')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1789, N'200800', N'Piura', N'Sechura ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1790, N'200801', N'Piura', N'Sechura ', N'Sechura')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1791, N'200802', N'Piura', N'Sechura ', N'Bellavista de la Unión')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1792, N'200803', N'Piura', N'Sechura ', N'Bernal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1793, N'200804', N'Piura', N'Sechura ', N'Cristo Nos Valga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1794, N'200805', N'Piura', N'Sechura ', N'Vice')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1795, N'200806', N'Piura', N'Sechura ', N'Rinconada Llicuar')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1796, N'210000', N'Puno', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1797, N'210100', N'Puno', N'Puno ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1798, N'210101', N'Puno', N'Puno ', N'Puno')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1799, N'210102', N'Puno', N'Puno ', N'Acora')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1800, N'210103', N'Puno', N'Puno ', N'Amantani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1801, N'210104', N'Puno', N'Puno ', N'Atuncolla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1802, N'210105', N'Puno', N'Puno ', N'Capachica')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1803, N'210106', N'Puno', N'Puno ', N'Chucuito')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1804, N'210107', N'Puno', N'Puno ', N'Coata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1805, N'210108', N'Puno', N'Puno ', N'Huata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1806, N'210109', N'Puno', N'Puno ', N'Mañazo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1807, N'210110', N'Puno', N'Puno ', N'Paucarcolla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1808, N'210111', N'Puno', N'Puno ', N'Pichacani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1809, N'210112', N'Puno', N'Puno ', N'Plateria')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1810, N'210113', N'Puno', N'Puno ', N'San Antonio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1811, N'210114', N'Puno', N'Puno ', N'Tiquillaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1812, N'210115', N'Puno', N'Puno ', N'Vilque')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1813, N'210200', N'Puno', N'Azángaro ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1814, N'210201', N'Puno', N'Azángaro ', N'Azángaro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1815, N'210202', N'Puno', N'Azángaro ', N'Achaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1816, N'210203', N'Puno', N'Azángaro ', N'Arapa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1817, N'210204', N'Puno', N'Azángaro ', N'Asillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1818, N'210205', N'Puno', N'Azángaro ', N'Caminaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1819, N'210206', N'Puno', N'Azángaro ', N'Chupa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1820, N'210207', N'Puno', N'Azángaro ', N'José Domingo Choquehuanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1821, N'210208', N'Puno', N'Azángaro ', N'Muñani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1822, N'210209', N'Puno', N'Azángaro ', N'Potoni')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1823, N'210210', N'Puno', N'Azángaro ', N'Saman')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1824, N'210211', N'Puno', N'Azángaro ', N'San Anton')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1825, N'210212', N'Puno', N'Azángaro ', N'San José')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1826, N'210213', N'Puno', N'Azángaro ', N'San Juan de Salinas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1827, N'210214', N'Puno', N'Azángaro ', N'Santiago de Pupuja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1828, N'210215', N'Puno', N'Azángaro ', N'Tirapata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1829, N'210300', N'Puno', N'Carabaya ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1830, N'210301', N'Puno', N'Carabaya ', N'Macusani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1831, N'210302', N'Puno', N'Carabaya ', N'Ajoyani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1832, N'210303', N'Puno', N'Carabaya ', N'Ayapata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1833, N'210304', N'Puno', N'Carabaya ', N'Coasa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1834, N'210305', N'Puno', N'Carabaya ', N'Corani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1835, N'210306', N'Puno', N'Carabaya ', N'Crucero')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1836, N'210307', N'Puno', N'Carabaya ', N'Ituata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1837, N'210308', N'Puno', N'Carabaya ', N'Ollachea')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1838, N'210309', N'Puno', N'Carabaya ', N'San Gaban')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1839, N'210310', N'Puno', N'Carabaya ', N'Usicayos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1840, N'210400', N'Puno', N'Chucuito ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1841, N'210401', N'Puno', N'Chucuito ', N'Juli')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1842, N'210402', N'Puno', N'Chucuito ', N'Desaguadero')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1843, N'210403', N'Puno', N'Chucuito ', N'Huacullani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1844, N'210404', N'Puno', N'Chucuito ', N'Kelluyo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1845, N'210405', N'Puno', N'Chucuito ', N'Pisacoma')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1846, N'210406', N'Puno', N'Chucuito ', N'Pomata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1847, N'210407', N'Puno', N'Chucuito ', N'Zepita')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1848, N'210500', N'Puno', N'El Collao ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1849, N'210501', N'Puno', N'El Collao ', N'Ilave')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1850, N'210502', N'Puno', N'El Collao ', N'Capazo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1851, N'210503', N'Puno', N'El Collao ', N'Pilcuyo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1852, N'210504', N'Puno', N'El Collao ', N'Santa Rosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1853, N'210505', N'Puno', N'El Collao ', N'Conduriri')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1854, N'210600', N'Puno', N'Huancané ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1855, N'210601', N'Puno', N'Huancané ', N'Huancane')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1856, N'210602', N'Puno', N'Huancané ', N'Cojata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1857, N'210603', N'Puno', N'Huancané ', N'Huatasani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1858, N'210604', N'Puno', N'Huancané ', N'Inchupalla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1859, N'210605', N'Puno', N'Huancané ', N'Pusi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1860, N'210606', N'Puno', N'Huancané ', N'Rosaspata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1861, N'210607', N'Puno', N'Huancané ', N'Taraco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1862, N'210608', N'Puno', N'Huancané ', N'Vilque Chico')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1863, N'210700', N'Puno', N'Lampa ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1864, N'210701', N'Puno', N'Lampa ', N'Lampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1865, N'210702', N'Puno', N'Lampa ', N'Cabanilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1866, N'210703', N'Puno', N'Lampa ', N'Calapuja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1867, N'210704', N'Puno', N'Lampa ', N'Nicasio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1868, N'210705', N'Puno', N'Lampa ', N'Ocuviri')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1869, N'210706', N'Puno', N'Lampa ', N'Palca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1870, N'210707', N'Puno', N'Lampa ', N'Paratia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1871, N'210708', N'Puno', N'Lampa ', N'Pucara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1872, N'210709', N'Puno', N'Lampa ', N'Santa Lucia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1873, N'210710', N'Puno', N'Lampa ', N'Vilavila')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1874, N'210800', N'Puno', N'Melgar ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1875, N'210801', N'Puno', N'Melgar ', N'Ayaviri')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1876, N'210802', N'Puno', N'Melgar ', N'Antauta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1877, N'210803', N'Puno', N'Melgar ', N'Cupi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1878, N'210804', N'Puno', N'Melgar ', N'Llalli')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1879, N'210805', N'Puno', N'Melgar ', N'Macari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1880, N'210806', N'Puno', N'Melgar ', N'Nuñoa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1881, N'210807', N'Puno', N'Melgar ', N'Orurillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1882, N'210808', N'Puno', N'Melgar ', N'Santa Rosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1883, N'210809', N'Puno', N'Melgar ', N'Umachiri')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1884, N'210900', N'Puno', N'Moho ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1885, N'210901', N'Puno', N'Moho ', N'Moho')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1886, N'210902', N'Puno', N'Moho ', N'Conima')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1887, N'210903', N'Puno', N'Moho ', N'Huayrapata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1888, N'210904', N'Puno', N'Moho ', N'Tilali')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1889, N'211000', N'Puno', N'San Antonio de Putina ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1890, N'211001', N'Puno', N'San Antonio de Putina ', N'Putina')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1891, N'211002', N'Puno', N'San Antonio de Putina ', N'Ananea')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1892, N'211003', N'Puno', N'San Antonio de Putina ', N'Pedro Vilca Apaza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1893, N'211004', N'Puno', N'San Antonio de Putina ', N'Quilcapuncu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1894, N'211005', N'Puno', N'San Antonio de Putina ', N'Sina')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1895, N'211100', N'Puno', N'San Román ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1896, N'211101', N'Puno', N'San Román ', N'Juliaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1897, N'211102', N'Puno', N'San Román ', N'Cabana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1898, N'211103', N'Puno', N'San Román ', N'Cabanillas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1899, N'211104', N'Puno', N'San Román ', N'Caracoto')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1900, N'211200', N'Puno', N'Sandia ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1901, N'211201', N'Puno', N'Sandia ', N'Sandia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1902, N'211202', N'Puno', N'Sandia ', N'Cuyocuyo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1903, N'211203', N'Puno', N'Sandia ', N'Limbani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1904, N'211204', N'Puno', N'Sandia ', N'Patambuco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1905, N'211205', N'Puno', N'Sandia ', N'Phara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1906, N'211206', N'Puno', N'Sandia ', N'Quiaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1907, N'211207', N'Puno', N'Sandia ', N'San Juan del Oro')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1908, N'211208', N'Puno', N'Sandia ', N'Yanahuaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1909, N'211209', N'Puno', N'Sandia ', N'Alto Inambari')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1910, N'211210', N'Puno', N'Sandia ', N'San Pedro de Putina Punco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1911, N'211300', N'Puno', N'Yunguyo ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1912, N'211301', N'Puno', N'Yunguyo ', N'Yunguyo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1913, N'211302', N'Puno', N'Yunguyo ', N'Anapia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1914, N'211303', N'Puno', N'Yunguyo ', N'Copani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1915, N'211304', N'Puno', N'Yunguyo ', N'Cuturapi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1916, N'211305', N'Puno', N'Yunguyo ', N'Ollaraya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1917, N'211306', N'Puno', N'Yunguyo ', N'Tinicachi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1918, N'211307', N'Puno', N'Yunguyo ', N'Unicachi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1919, N'220000', N'San Martín', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1920, N'220100', N'San Martín', N'Moyobamba ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1921, N'220101', N'San Martín', N'Moyobamba ', N'Moyobamba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1922, N'220102', N'San Martín', N'Moyobamba ', N'Calzada')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1923, N'220103', N'San Martín', N'Moyobamba ', N'Habana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1924, N'220104', N'San Martín', N'Moyobamba ', N'Jepelacio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1925, N'220105', N'San Martín', N'Moyobamba ', N'Soritor')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1926, N'220106', N'San Martín', N'Moyobamba ', N'Yantalo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1927, N'220200', N'San Martín', N'Bellavista ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1928, N'220201', N'San Martín', N'Bellavista ', N'Bellavista')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1929, N'220202', N'San Martín', N'Bellavista ', N'Alto Biavo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1930, N'220203', N'San Martín', N'Bellavista ', N'Bajo Biavo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1931, N'220204', N'San Martín', N'Bellavista ', N'Huallaga')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1932, N'220205', N'San Martín', N'Bellavista ', N'San Pablo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1933, N'220206', N'San Martín', N'Bellavista ', N'San Rafael')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1934, N'220300', N'San Martín', N'El Dorado ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1935, N'220301', N'San Martín', N'El Dorado ', N'San José de Sisa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1936, N'220302', N'San Martín', N'El Dorado ', N'Agua Blanca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1937, N'220303', N'San Martín', N'El Dorado ', N'San Martín')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1938, N'220304', N'San Martín', N'El Dorado ', N'Santa Rosa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1939, N'220305', N'San Martín', N'El Dorado ', N'Shatoja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1940, N'220400', N'San Martín', N'Huallaga ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1941, N'220401', N'San Martín', N'Huallaga ', N'Saposoa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1942, N'220402', N'San Martín', N'Huallaga ', N'Alto Saposoa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1943, N'220403', N'San Martín', N'Huallaga ', N'El Eslabón')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1944, N'220404', N'San Martín', N'Huallaga ', N'Piscoyacu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1945, N'220405', N'San Martín', N'Huallaga ', N'Sacanche')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1946, N'220406', N'San Martín', N'Huallaga ', N'Tingo de Saposoa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1947, N'220500', N'San Martín', N'Lamas ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1948, N'220501', N'San Martín', N'Lamas ', N'Lamas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1949, N'220502', N'San Martín', N'Lamas ', N'Alonso de Alvarado')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1950, N'220503', N'San Martín', N'Lamas ', N'Barranquita')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1951, N'220504', N'San Martín', N'Lamas ', N'Caynarachi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1952, N'220505', N'San Martín', N'Lamas ', N'Cuñumbuqui')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1953, N'220506', N'San Martín', N'Lamas ', N'Pinto Recodo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1954, N'220507', N'San Martín', N'Lamas ', N'Rumisapa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1955, N'220508', N'San Martín', N'Lamas ', N'San Roque de Cumbaza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1956, N'220509', N'San Martín', N'Lamas ', N'Shanao')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1957, N'220510', N'San Martín', N'Lamas ', N'Tabalosos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1958, N'220511', N'San Martín', N'Lamas ', N'Zapatero')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1959, N'220600', N'San Martín', N'Mariscal Cáceres ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1960, N'220601', N'San Martín', N'Mariscal Cáceres ', N'Juanjuí')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1961, N'220602', N'San Martín', N'Mariscal Cáceres ', N'Campanilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1962, N'220603', N'San Martín', N'Mariscal Cáceres ', N'Huicungo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1963, N'220604', N'San Martín', N'Mariscal Cáceres ', N'Pachiza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1964, N'220605', N'San Martín', N'Mariscal Cáceres ', N'Pajarillo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1965, N'220700', N'San Martín', N'Picota ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1966, N'220701', N'San Martín', N'Picota ', N'Picota')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1967, N'220702', N'San Martín', N'Picota ', N'Buenos Aires')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1968, N'220703', N'San Martín', N'Picota ', N'Caspisapa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1969, N'220704', N'San Martín', N'Picota ', N'Pilluana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1970, N'220705', N'San Martín', N'Picota ', N'Pucacaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1971, N'220706', N'San Martín', N'Picota ', N'San Cristóbal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1972, N'220707', N'San Martín', N'Picota ', N'San Hilarión')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1973, N'220708', N'San Martín', N'Picota ', N'Shamboyacu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1974, N'220709', N'San Martín', N'Picota ', N'Tingo de Ponasa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1975, N'220710', N'San Martín', N'Picota ', N'Tres Unidos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1976, N'220800', N'San Martín', N'Rioja ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1977, N'220801', N'San Martín', N'Rioja ', N'Rioja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1978, N'220802', N'San Martín', N'Rioja ', N'Awajun')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1979, N'220803', N'San Martín', N'Rioja ', N'Elías Soplin Vargas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1980, N'220804', N'San Martín', N'Rioja ', N'Nueva Cajamarca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1981, N'220805', N'San Martín', N'Rioja ', N'Pardo Miguel')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1982, N'220806', N'San Martín', N'Rioja ', N'Posic')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1983, N'220807', N'San Martín', N'Rioja ', N'San Fernando')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1984, N'220808', N'San Martín', N'Rioja ', N'Yorongos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1985, N'220809', N'San Martín', N'Rioja ', N'Yuracyacu')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1986, N'220900', N'San Martín', N'San Martín ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1987, N'220901', N'San Martín', N'San Martín ', N'Tarapoto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1988, N'220902', N'San Martín', N'San Martín ', N'Alberto Leveau')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1989, N'220903', N'San Martín', N'San Martín ', N'Cacatachi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1990, N'220904', N'San Martín', N'San Martín ', N'Chazuta')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1991, N'220905', N'San Martín', N'San Martín ', N'Chipurana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1992, N'220906', N'San Martín', N'San Martín ', N'El Porvenir')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1993, N'220907', N'San Martín', N'San Martín ', N'Huimbayoc')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1994, N'220908', N'San Martín', N'San Martín ', N'Juan Guerra')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1995, N'220909', N'San Martín', N'San Martín ', N'La Banda de Shilcayo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1996, N'220910', N'San Martín', N'San Martín ', N'Morales')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1997, N'220911', N'San Martín', N'San Martín ', N'Papaplaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1998, N'220912', N'San Martín', N'San Martín ', N'San Antonio')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (1999, N'220913', N'San Martín', N'San Martín ', N'Sauce')
GO
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2000, N'220914', N'San Martín', N'San Martín ', N'Shapaja')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2001, N'221000', N'San Martín', N'Tocache ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2002, N'221001', N'San Martín', N'Tocache ', N'Tocache')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2003, N'221002', N'San Martín', N'Tocache ', N'Nuevo Progreso')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2004, N'221003', N'San Martín', N'Tocache ', N'Polvora')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2005, N'221004', N'San Martín', N'Tocache ', N'Shunte')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2006, N'221005', N'San Martín', N'Tocache ', N'Uchiza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2007, N'230000', N'Tacna', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2008, N'230100', N'Tacna', N'Tacna ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2009, N'230101', N'Tacna', N'Tacna ', N'Tacna')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2010, N'230102', N'Tacna', N'Tacna ', N'Alto de la Alianza')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2011, N'230103', N'Tacna', N'Tacna ', N'Calana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2012, N'230104', N'Tacna', N'Tacna ', N'Ciudad Nueva')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2013, N'230105', N'Tacna', N'Tacna ', N'Inclan')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2014, N'230106', N'Tacna', N'Tacna ', N'Pachia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2015, N'230107', N'Tacna', N'Tacna ', N'Palca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2016, N'230108', N'Tacna', N'Tacna ', N'Pocollay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2017, N'230109', N'Tacna', N'Tacna ', N'Sama')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2018, N'230110', N'Tacna', N'Tacna ', N'Coronel Gregorio Albarracín Lanchipa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2019, N'230200', N'Tacna', N'Candarave ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2020, N'230201', N'Tacna', N'Candarave ', N'Candarave')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2021, N'230202', N'Tacna', N'Candarave ', N'Cairani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2022, N'230203', N'Tacna', N'Candarave ', N'Camilaca')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2023, N'230204', N'Tacna', N'Candarave ', N'Curibaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2024, N'230205', N'Tacna', N'Candarave ', N'Huanuara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2025, N'230206', N'Tacna', N'Candarave ', N'Quilahuani')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2026, N'230300', N'Tacna', N'Jorge Basadre ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2027, N'230301', N'Tacna', N'Jorge Basadre ', N'Locumba')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2028, N'230302', N'Tacna', N'Jorge Basadre ', N'Ilabaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2029, N'230303', N'Tacna', N'Jorge Basadre ', N'Ite')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2030, N'230400', N'Tacna', N'Tarata ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2031, N'230401', N'Tacna', N'Tarata ', N'Tarata')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2032, N'230402', N'Tacna', N'Tarata ', N'Héroes Albarracín')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2033, N'230403', N'Tacna', N'Tarata ', N'Estique')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2034, N'230404', N'Tacna', N'Tarata ', N'Estique-Pampa')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2035, N'230405', N'Tacna', N'Tarata ', N'Sitajara')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2036, N'230406', N'Tacna', N'Tarata ', N'Susapaya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2037, N'230407', N'Tacna', N'Tarata ', N'Tarucachi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2038, N'230408', N'Tacna', N'Tarata ', N'Ticaco')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2039, N'240000', N'Tumbes', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2040, N'240100', N'Tumbes', N'Tumbes ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2041, N'240101', N'Tumbes', N'Tumbes ', N'Tumbes')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2042, N'240102', N'Tumbes', N'Tumbes ', N'Corrales')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2043, N'240103', N'Tumbes', N'Tumbes ', N'La Cruz')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2044, N'240104', N'Tumbes', N'Tumbes ', N'Pampas de Hospital')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2045, N'240105', N'Tumbes', N'Tumbes ', N'San Jacinto')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2046, N'240106', N'Tumbes', N'Tumbes ', N'San Juan de la Virgen')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2047, N'240200', N'Tumbes', N'Contralmirante Villar ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2048, N'240201', N'Tumbes', N'Contralmirante Villar ', N'Zorritos')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2049, N'240202', N'Tumbes', N'Contralmirante Villar ', N'Casitas')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2050, N'240203', N'Tumbes', N'Contralmirante Villar ', N'Canoas de Punta Sal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2051, N'240300', N'Tumbes', N'Zarumilla ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2052, N'240301', N'Tumbes', N'Zarumilla ', N'Zarumilla')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2053, N'240302', N'Tumbes', N'Zarumilla ', N'Aguas Verdes')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2054, N'240303', N'Tumbes', N'Zarumilla ', N'Matapalo')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2055, N'240304', N'Tumbes', N'Zarumilla ', N'Papayal')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2056, N'250000', N'Ucayali', NULL, NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2057, N'250100', N'Ucayali', N'Coronel Portillo ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2058, N'250101', N'Ucayali', N'Coronel Portillo ', N'Calleria')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2059, N'250102', N'Ucayali', N'Coronel Portillo ', N'Campoverde')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2060, N'250103', N'Ucayali', N'Coronel Portillo ', N'Iparia')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2061, N'250104', N'Ucayali', N'Coronel Portillo ', N'Masisea')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2062, N'250105', N'Ucayali', N'Coronel Portillo ', N'Yarinacocha')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2063, N'250106', N'Ucayali', N'Coronel Portillo ', N'Nueva Requena')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2064, N'250107', N'Ucayali', N'Coronel Portillo ', N'Manantay')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2065, N'250200', N'Ucayali', N'Atalaya ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2066, N'250201', N'Ucayali', N'Atalaya ', N'Raymondi')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2067, N'250202', N'Ucayali', N'Atalaya ', N'Sepahua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2068, N'250203', N'Ucayali', N'Atalaya ', N'Tahuania')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2069, N'250204', N'Ucayali', N'Atalaya ', N'Yurua')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2070, N'250300', N'Ucayali', N'Padre Abad ', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2071, N'250301', N'Ucayali', N'Padre Abad ', N'Padre Abad')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2072, N'250302', N'Ucayali', N'Padre Abad ', N'Irazola')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2073, N'250303', N'Ucayali', N'Padre Abad ', N'Curimana')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2074, N'250304', N'Ucayali', N'Padre Abad ', N'Neshuya')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2075, N'250305', N'Ucayali', N'Padre Abad ', N'Alexander Von Humboldt')
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2076, N'250400', N'Ucayali', N'Purús', NULL)
INSERT [dbo].[Ubigeo] ([UbigeoId], [Codigo], [Departamento], [Provincia], [Distrito]) VALUES (2077, N'250401', N'Ucayali', N'Purús', N'Purus')
SET IDENTITY_INSERT [dbo].[Ubigeo] OFF
SET IDENTITY_INSERT [dbo].[Uit] ON 

INSERT [dbo].[Uit] ([UitId], [Nombre], [Fecha], [Valor], [Estado]) VALUES (1, N'UIT 1', CAST(0x0000A6CB00000000 AS DateTime), CAST(3850.000 AS Decimal(13, 3)), 1)
SET IDENTITY_INSERT [dbo].[Uit] OFF
ALTER TABLE [dbo].[Concepto] ADD  CONSTRAINT [DF_Concepto_Aprobado]  DEFAULT ((0)) FOR [Aprobado]
GO
ALTER TABLE [dbo].[Asistencia]  WITH CHECK ADD  CONSTRAINT [FK_Asistencia_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Asistencia] CHECK CONSTRAINT [FK_Asistencia_Empleado]
GO
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Empleado]
GO
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Ubigeo] FOREIGN KEY([UbigeoId])
REFERENCES [dbo].[Ubigeo] ([UbigeoId])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Ubigeo]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Banco] FOREIGN KEY([BancoId])
REFERENCES [dbo].[Banco] ([BancoId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Banco]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Moneda] FOREIGN KEY([MonedaId])
REFERENCES [dbo].[Moneda] ([MonedaId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Moneda]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_TipoCuenta] FOREIGN KEY([TipoCuentaId])
REFERENCES [dbo].[TipoCuenta] ([TipoCuentaId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_TipoCuenta]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_TipoDocumento] FOREIGN KEY([TipoDocumentoId])
REFERENCES [dbo].[TipoDocumento] ([TipoDocumentoId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_TipoDocumento]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Ubigeo] FOREIGN KEY([UbigeoId])
REFERENCES [dbo].[Ubigeo] ([UbigeoId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Ubigeo]
GO
ALTER TABLE [dbo].[EmpleadoAfp]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoAfp_Afp] FOREIGN KEY([AfpId])
REFERENCES [dbo].[Afp] ([AfpId])
GO
ALTER TABLE [dbo].[EmpleadoAfp] CHECK CONSTRAINT [FK_EmpleadoAfp_Afp]
GO
ALTER TABLE [dbo].[EmpleadoAfp]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoAfp_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[EmpleadoAfp] CHECK CONSTRAINT [FK_EmpleadoAfp_Empleado]
GO
ALTER TABLE [dbo].[EmpleadoOnp]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoOnp_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[EmpleadoOnp] CHECK CONSTRAINT [FK_EmpleadoOnp_Empleado]
GO
ALTER TABLE [dbo].[EmpleadoOnp]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoOnp_Onp] FOREIGN KEY([OnpId])
REFERENCES [dbo].[Onp] ([OnpId])
GO
ALTER TABLE [dbo].[EmpleadoOnp] CHECK CONSTRAINT [FK_EmpleadoOnp_Onp]
GO
ALTER TABLE [dbo].[EmpleadoSueldoBase]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoSueldoBase_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[EmpleadoSueldoBase] CHECK CONSTRAINT [FK_EmpleadoSueldoBase_Empleado]
GO
ALTER TABLE [dbo].[Falta]  WITH CHECK ADD  CONSTRAINT [FK_Falta_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Falta] CHECK CONSTRAINT [FK_Falta_Empleado]
GO
ALTER TABLE [dbo].[Falta]  WITH CHECK ADD  CONSTRAINT [FK_Falta_Justificacion] FOREIGN KEY([JustificacionId])
REFERENCES [dbo].[Justificacion] ([JustificacionId])
GO
ALTER TABLE [dbo].[Falta] CHECK CONSTRAINT [FK_Falta_Justificacion]
GO
ALTER TABLE [dbo].[Justificacion]  WITH CHECK ADD  CONSTRAINT [FK_Justificacion_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Justificacion] CHECK CONSTRAINT [FK_Justificacion_Empleado]
GO
ALTER TABLE [dbo].[Planilla]  WITH CHECK ADD  CONSTRAINT [FK_Planilla_Empleado] FOREIGN KEY([EmpleadoId_Aprueba])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Planilla] CHECK CONSTRAINT [FK_Planilla_Empleado]
GO
ALTER TABLE [dbo].[Planilla]  WITH CHECK ADD  CONSTRAINT [FK_Planilla_SueldoMinimo] FOREIGN KEY([SueldoMinimoId])
REFERENCES [dbo].[SueldoMinimo] ([SueldoMinimoId])
GO
ALTER TABLE [dbo].[Planilla] CHECK CONSTRAINT [FK_Planilla_SueldoMinimo]
GO
ALTER TABLE [dbo].[Planilla]  WITH CHECK ADD  CONSTRAINT [FK_Planilla_Uit] FOREIGN KEY([UitId])
REFERENCES [dbo].[Uit] ([UitId])
GO
ALTER TABLE [dbo].[Planilla] CHECK CONSTRAINT [FK_Planilla_Uit]
GO
ALTER TABLE [dbo].[PlanillaEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_PlanillaEmpleado_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[PlanillaEmpleado] CHECK CONSTRAINT [FK_PlanillaEmpleado_Empleado]
GO
ALTER TABLE [dbo].[PlanillaEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_PlanillaEmpleado_Planilla] FOREIGN KEY([PlanillaId])
REFERENCES [dbo].[Planilla] ([PlanillaId])
GO
ALTER TABLE [dbo].[PlanillaEmpleado] CHECK CONSTRAINT [FK_PlanillaEmpleado_Planilla]
GO
ALTER TABLE [dbo].[PlanillaEmpleadoConcepto]  WITH CHECK ADD  CONSTRAINT [FK_PlanillaEmpleadoConcepto_Concepto] FOREIGN KEY([ConceptoId])
REFERENCES [dbo].[Concepto] ([ConceptoId])
GO
ALTER TABLE [dbo].[PlanillaEmpleadoConcepto] CHECK CONSTRAINT [FK_PlanillaEmpleadoConcepto_Concepto]
GO
ALTER TABLE [dbo].[PlanillaEmpleadoConcepto]  WITH CHECK ADD  CONSTRAINT [FK_PlanillaEmpleadoConcepto_PlanillaEmpleado] FOREIGN KEY([PlanillaEmpleadoId])
REFERENCES [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId])
GO
ALTER TABLE [dbo].[PlanillaEmpleadoConcepto] CHECK CONSTRAINT [FK_PlanillaEmpleadoConcepto_PlanillaEmpleado]
GO
ALTER TABLE [dbo].[Tardanza]  WITH CHECK ADD  CONSTRAINT [FK_Tardanza_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Tardanza] CHECK CONSTRAINT [FK_Tardanza_Empleado]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 285
               Bottom = 136
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 532
               Bottom = 136
               Right = 774
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_ConveptoDetalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_ConveptoDetalle'
GO
