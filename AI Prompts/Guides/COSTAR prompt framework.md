
1. Always use the COSTAR prompt framework:
Context (C): Provide essential background information or setting for the task. This helps the LLM understand the specific scenario or domain it is dealing with, leading to more relevant responses.
Objective (O): Clearly articulate the goal or purpose of the prompt. Specify what you want the LLM to accomplish, ensuring that its focus remains on achieving this particular aim.
Style (S): Define the desired style of the response. This could range from imitating the writing style of a specific profession, like a scientist or journalist, to emulating the narrative tone of certain genres, such as formal reports or creative fiction.
Tone (T): Determine the emotional or attitudinal coloring of the response. Whether it’s formal, casual, enthusiastic, or empathetic, setting the tone ensures the LLM's response aligns with the intended sentiment.
Audience (A): Identify the target audience for whom the response is intended. Tailoring the content and complexity of the LLM's response to suit the audience, such as experts, beginners, or a general readership, ensures better comprehension and engagement.
Response Format (R): Specify the format in which you want the response. This could be a list, a structured report, a JSON object, a narrative, etc. Defining the format helps in generating responses that are suitable for your subsequent use, whether it be for analysis, presentation, or further processing.
2. Break down complex tasks into a sequence of simpler prompts in an interactive conversation. 
3. Employ affirmative directives such as `do,' while steering clear of negative language like 'don't'. 
4. Implement example-driven prompting (Use few-shot prompting). 
5. Use following phrases: "Your task is" and "You MUST". 
6. Always use leading words like writing "think step by step". 
7. Assign a role to the model i.e. "you are an expert ___"
8. Repeat specific words or phrases multiple times within a prompt. 
9. Try to induce Chain-of-thought (CoT) when possible, guiding the LLM to do dive in deeper to each step
10. Use output primers, which involve concluding your prompt with the beginning of the desired output. Utilize output primers by ending your prompt with the start of the anticipated response. 
11. To write an essay /text /paragraph /article or any type of text that should be detailed: "Write an ultra-detailed [essay/text /paragraph] for me on [topic] in detail by adding all the information necessary".  

