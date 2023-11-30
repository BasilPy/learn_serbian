import psycopg2
import os
import tkinter as tk
from tkinter import ttk

class SentenceGenerator:
    def __init__(self, root):
        self.root = root
        self.root.title("Generate Sentences")

        self.entry_verb = tk.Entry(self.root)
        self.entry_verb.grid(row=0, column=0, padx=10, pady=10, sticky="ew")

        self.btn_check = tk.Button(self.root, text="Check", command=self.check_verb)
        self.btn_check.grid(row=0, column=0, padx=10, pady=10, sticky="ew")

        self.tree = ttk.Treeview(self.root, columns=("Present Srb", "Translation"), show="headings")
        self.tree.heading("Present Srb", text="Present Srb")
        self.tree.heading("Translation", text="Translation")
        self.tree.grid(row=1, column=0, columnspan=3, padx=10, pady=10, sticky="nsew")

        self.root.columnconfigure(0, weight=1)
        self.root.columnconfigure(1, weight=1)
        self.root.rowconfigure(0, weight=0)  # First row doesn't expand vertically
        self.root.rowconfigure(1, weight=1)

    def check_verb(self):
        verb = self.entry_verb.get()
        conn = psycopg2.connect(host='localhost',
                                user='postgres',
                                database='eng_srb', #os.environ["SQL_db_name"],
                                password='123qwe', #os.environ["SQL_password"],
                                port=5433)
        cur = conn.cursor()
        query = f"SELECT * FROM verb_a WHERE inf_eng = '{verb}'"
        cur.execute(query)
        result = cur.fetchone()

        conn.commit()
        cur.close()
        conn.close()
        data_tr = ("I ", "Thou ", "She $He $It ", "We ", "You ", "They ")

if __name__ == "__main__":
    root_ = tk.Tk()
    application = SentenceGenerator(root_)
    root_.mainloop()

