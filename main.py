import psycopg2
import os
import tkinter as tk
from tkinter import ttk, filedialog
import random
import csv


class SentenceGenerator:
    def __init__(self, root):
        self.root = root
        self.root.title('Generate Sentences')

        self.entry_verb = tk.Entry(self.root)
        self.entry_verb.grid(row=0, column=0, padx=10, pady=10, sticky="ew")

        self.btn_check = tk.Button(self.root, text="Check", command=self.check_verb)
        self.btn_check.grid(row=0, column=1, padx=10, pady=10, sticky="ew")

        self.tree = ttk.Treeview(self.root, columns=("Present Srb", "Translation"), show="headings")
        self.tree.heading("Present Srb", text="Present Srb")
        self.tree.heading("Translation", text="Translation")
        self.tree.grid(row=1, column=0, columnspan=3, padx=10, pady=10, sticky="nsew")

        self.root.columnconfigure(0, weight=1)
        self.root.columnconfigure(1, weight=1)
        self.root.rowconfigure(0, weight=0)  # First row doesn't expand vertically
        self.root.rowconfigure(1, weight=1)

        self.button_save_csv = tk.Button(self.root, text="Save as CSV", command=self.save_to_csv)
        self.button_save_csv.grid(row=2, column=0, columnspan=2, pady=10, sticky="ew")

    def check_verb(self):
        verb = self.entry_verb.get()
        conn = psycopg2.connect(host='localhost',
                                user='postgres',
                                database='eng_srb',  # os.environ["SQL_db_name"],
                                password='123qwe',  # os.environ["SQL_password"],
                                port=5433)

        cur = conn.cursor()
        query = f"SELECT * FROM verb_a WHERE inf_eng = '{verb}'"
        cur.execute(query)
        result = cur.fetchone()

        conn.commit()

        data_tr = ("I ", "Thou ", "She $He $It ", "We ", "You ", "They ")

        if result:
            # Update the table with the data
            present_data = result[2:8]  # Columns present_i to present_they
            translation_data = []

            for i in range(0, len(data_tr)):
                if not data_tr[i].startswith("She"):
                    translation_data.append(data_tr[i] + result[0])  # Column inf_eng
                else:
                    data = []
                    num = random.randint(0, 2)
                    # for j in (0, 1, 2):
                    data.append(data_tr[i].split("$")[num] + result[0] + "s")
                    translation_data.append("$".join(data))

            self.update_table(present_data, translation_data)
        else:
            # Clear the table if the word doesn't exist
            self.clear_table()

            # Close the database connection
        cur.close()
        conn.close()

    def update_table(self, present_data, translation_data):
        # Clear previous data in the table
        for row in self.tree.get_children():
            self.tree.delete(row)

        for i in random.sample(range(0, len(present_data)), len(present_data)):
            self.tree.insert("", "end", values=(present_data[i], translation_data[i]))
            # if not translation_data[i].startswith("She"):
            #     self.tree.insert("", "end", values=(present_data[i], translation_data[i]))
            # else:
            #     self.tree.insert("", "end", values=(present_data[i], translation_data[i]))

            # for j in (0, 1, 2):
            #    self.tree.insert("", "end", values=(present_data[i], translation_data[i].split("$")[j]))

    def clear_table(self):
        # Clear all data in the table
        for row in self.tree.get_children():
            self.tree.delete(row)

    def save_to_csv(self):
        filename = filedialog.asksaveasfilename(defaultextension=".csv", filetypes=[("CSV files", "*.csv")])

        if filename:
            with open(filename, 'w', newline='') as csv_file:
                csv_writer = csv.writer(csv_file)
                headers = ["Present Srb", "Translation"]
                csv_writer.writerow(headers)

                for row_id in self.tree.get_children():
                    values = self.tree.item(row_id, 'values')
                    csv_writer.writerow(values)


if __name__ == "__main__":
    root_ = tk.Tk()
    application = SentenceGenerator(root_)
    root_.mainloop()
