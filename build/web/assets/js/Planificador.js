const form = document.querySelector('form');
const calculator = document.getElementById('calculator');
const name = document.getElementById('nome');
const age = document.getElementById('idade');
const masculine = document.getElementById('masculino');
const feminine = document.getElementById('feminino');
const weight = document.getElementById('peso');
const height = document.getElementById('altura');
const activity = document.getElementById('atividade');
const objective = document.getElementById('objetivo');
const button = document.querySelector('button');

button.addEventListener('click', () => {
    const nameValue = name.value;
    const ageValue = age.value;
    const weightValue = weight.value;
    const heightValue = height.value;
    const activityValue = activity.value;
    const objectiveValue = objective.value;

    const date = new Date();
    const day = date.getDate();
    const month = 1 + date.getMonth();
    const year = date.getFullYear();

    if(nameValue == 0 || ageValue == 0 || weightValue == 0 || heightValue == 0) {
        window.alert("Llena todos los campos");
        name.focus();
    } else {

        let metabolismBasal;

        if (masculine.checked) {    
            metabolismBasal = 66 + (13.8 * weightValue) + (5 * heightValue) - (6.8 * ageValue);
            
        } else if (feminine.checked) {
            metabolismBasal = 655 + (9.6 * weightValue) + (1.8 * heightValue) - (4.7 * ageValue);
        }
        
        let totalSpend;

        switch (activityValue) {
            case "leve": 
                totalSpend = metabolismBasal * 1.375;
                break;
            case "moderada": 
                totalSpend = metabolismBasal * 1.55;
                break;
            case "intensa":
                totalSpend = metabolismBasal * 1.725;
                break;
        }

        let totalCalories;
        let showObjective;

        switch (objectiveValue) {
            case "ganar peso":
                totalCalories = totalSpend + 500;
                showObjective = 'ganar peso';
                break;
            case "mantener peso":
                totalCalories = totalSpend;
                showObjective = 'mantener peso';
                break;
            case "perder peso":
                totalCalories = totalSpend - 500;
                showObjective = 'perder peso';
        }

        const carbo = (totalCalories / 100 * 57.14) / 4;
        const carboMacro = carbo / weightValue;
        const protein = (totalCalories / 100 * 14.29 ) / 4;
        const proteinMacro = protein / weightValue;
        const fat = (totalCalories / 100 * 28.57) / 9;
        const fatMacro = fat / weightValue;


        const imc = weightValue / (heightValue / 100) ** 2;

        let amountWater;
        
        if(ageValue < 18) {
            amountWater = weightValue * 40 / 1000
        } else if (ageValue < 56) {
            amountWater = weightValue * 35 / 1000
        } else if (ageValue < 65) {
            amountWater = weightValue * 30 / 1000
        } else {
            amountWater = weightValue * 25 / 1000
        }

        const creatine = weightValue * 0.07;

        form.remove();

        const display = {
            metabolism: `\u{1F3C3} Metabolismo:`,
            metabolismBasal: `Tasa de metabolismo basal: ${metabolismBasal.toFixed(0)} kcal.`,
            totalSpend: `Gasto energético total: ${totalSpend.toFixed(0)} kcal.`,
            totalCalories: `Debes ingerir ${totalCalories.toFixed(0)} kcal por día para ${showObjective}.`,
            macros: `\u{1F357} Macronutrientes:`,
            protein: `Proteínas: ${protein.toFixed(0)} g por día (${proteinMacro.toFixed(1)} g por kg).`,
            carbo: `Carbohidratos: ${carbo.toFixed(0)} g por día (${carboMacro.toFixed(1)} g por kg).`,
            fat: `Grasas: ${fat.toFixed(0)} g por día (${fatMacro.toFixed(1)} g por kg).`,
            others: `\u{1F4AA} Otros:`,
            imc: `IMC: ${imc.toFixed(2)}`,
            creatine: `Creatina: ${creatine.toFixed(1)} g por día.`,
            water: `Agua: al menos ${amountWater.toFixed(1)} litros por día.`
        }

        const createElement = (element, text, style) => {
            const create = document.createElement(element);
            create.textContent = text;
            style(create);
            calculator.appendChild(create);
            return create;
        }

        const h3Style = (h3) => {
            h3.style.cssText = `
            text-align: left;
            margin-top: 18px
            `
            return h3;
        }

        const pStyle = (p) => {
            p.style.cssText = `
            font-size: 18px;
            text-align: left;
            margin-top: 15px;
            `
            return p;
        }

        createElement('h2', nameValue, (h2) => {return h2.style.cssText = `text-align: center; margin: 18px 0 5px 0`});

        createElement('p', `${day}/${month}/${year}`, (p) => {return p.style.cssText = `text-align: center; font-weight: bold;`});

        const execDisplay = Object.values(display);

        for (let c in execDisplay) {
            if(c == 0 || c == 4 || c == 8) {
                createElement('h3',execDisplay[c], h3Style);
            } else {
                createElement('p',execDisplay[c], pStyle);
            }
        };

        const print = createElement('button', "Imprimir", (button) => {return button.style.cssText = `margin-top: 13px`})
        print.addEventListener('click', () => {
            window.print();
        })
    }
})