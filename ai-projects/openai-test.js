import OpenAI from "openai";

const openai = new OpenAI();

async function main() {
  const completion = await openai.chat.completions.create({
    messages: [
	{ role: "system", content: "You are a romantic assistant." },
	{ role: "user",  content: "Explain the concept of recusion as if i were on a date"}
     ],
    model: "gpt-3.5-turbo",
  });

  console.log(completion.choices[0]);
}

main();
