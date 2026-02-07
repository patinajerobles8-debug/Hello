import Foundation

enum MockData {
    static let programs: [WorkoutProgram] = [
        WorkoutProgram(
            id: UUID(),
            title: "Energia Total",
            coach: "Laura Fit",
            durationWeeks: 6,
            sessionsPerWeek: 4,
            focus: "Cardio + fuerza funcional",
            intensity: "Intermedia",
            description: "Programa pensado para mujeres que quieren sentirse fuertes y radiantes con sesiones cortas y potentes."
        ),
        WorkoutProgram(
            id: UUID(),
            title: "Glúteos & Core",
            coach: "Sofi Power",
            durationWeeks: 8,
            sessionsPerWeek: 3,
            focus: "Tono y resistencia",
            intensity: "Baja impacto",
            description: "Rutinas para trabajar glúteos y abdomen sin gimnasio, con acompañamiento diario."
        ),
        WorkoutProgram(
            id: UUID(),
            title: "Mindful Movement",
            coach: "Valentina Flow",
            durationWeeks: 4,
            sessionsPerWeek: 5,
            focus: "Movilidad + bienestar",
            intensity: "Suave",
            description: "Sesiones para conectar con tu cuerpo, bajar el estrés y moverte con intención."
        )
    ]

    static let checkIns: [DailyCheckIn] = [
        DailyCheckIn(
            id: UUID(),
            date: Date(),
            mood: "Con energía",
            completedMinutes: 35,
            hydrationGlasses: 6,
            highlight: "Terminé mi primera semana completa."
        ),
        DailyCheckIn(
            id: UUID(),
            date: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(),
            mood: "Tranquila",
            completedMinutes: 20,
            hydrationGlasses: 4,
            highlight: "Estiré antes de dormir."
        ),
        DailyCheckIn(
            id: UUID(),
            date: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(),
            mood: "Motivada",
            completedMinutes: 45,
            hydrationGlasses: 7,
            highlight: "Nueva marca personal en sentadillas."
        )
    ]
}
