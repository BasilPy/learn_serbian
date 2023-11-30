import psycopg2
import os
import tkinter as tk


class SentenceGenerator:
    def __init__(self, root):
        self.root = root
        self.root.title("Generate Sentences")

        self.entry_verb = tk.Entry(self.root)
        self.entry_verb.grid(row=0, column=0, padx=10, pady=10, sticky="ew")

        self.btn_check = tk.Button(self.root, text="Check", command=self.check_verb)
        self.btn_check.grid(row=0, column=0, padx=10, pady=10, sticky="ew")

    def check_verb(self):
        verb = self.entry_verb.get()
        conn = psycopg2.connect(host='localhost',
                                user='postgres',
                                database=os.environ["SQL_db_name"],
                                password=os.environ["SQL_password"],
                                port=5433)
        cur = conn.cursor()
        query = f"SELECT * FROM verb_a WHERE inf_eng = '{verb}'"
        cur.execute(query)
        print(cur.fetchone())

        conn.commit()
        cur.close()
        conn.close()


if __name__ == "__main__":
    root_ = tk.Tk()
    application = SentenceGenerator(root_)
    root_.mainloop()

