.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    }
.end annotation


# static fields
.field private static final HAS_WORD_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mLocale:Ljava/lang/String;

.field private final mMode:I

.field private final mOldShortcut:Ljava/lang/String;

.field private final mOldWord:Ljava/lang/String;

.field private mSavedShortcut:Ljava/lang/String;

.field private mSavedWord:Ljava/lang/String;

.field private final mShortcutEditText:Landroid/widget/EditText;

.field private final mWordEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "word"

    .line 170
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget v0, Lcom/android/settings/R$id;->user_dictionary_add_word_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    .line 64
    sget v0, Lcom/android/settings/R$id;->user_dictionary_add_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    const-string/jumbo p1, "word"

    .line 65
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const-string v0, "shortcut"

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v1, "mode"

    .line 76
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    .line 77
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    const-string p1, "locale"

    .line 79
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget v0, Lcom/android/settings/R$id;->user_dictionary_add_word_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    .line 85
    sget v0, Lcom/android/settings/R$id;->user_dictionary_add_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    .line 87
    iget-object p1, p2, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedWord:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    .line 88
    iget-object p1, p2, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedShortcut:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    .line 89
    invoke-virtual {p2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->getCurrentUserDictionaryLocale()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    return-void
.end method

.method private static addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 231
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private hasWord(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 9

    .line 180
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/String;

    aput-object p1, v7, v2

    const/4 v8, 0x0

    const-string/jumbo v6, "word=? AND locale is null"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    const/4 p2, 0x2

    new-array v7, p2, [Ljava/lang/String;

    aput-object p1, v7, v2

    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    aput-object p0, v7, v1

    const/4 v8, 0x0

    const-string/jumbo v6, "word=? AND locale=?"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    .line 193
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v2

    .line 191
    :cond_2
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz p0, :cond_4

    .line 193
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_5
    throw p1
.end method


# virtual methods
.method apply(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 4

    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 122
    iget v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 138
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p0, 0x1

    return p0

    .line 142
    :cond_4
    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedWord:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedShortcut:Ljava/lang/String;

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->hasWord(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 p0, 0x2

    return p0

    .line 155
    :cond_5
    invoke-static {v0, v2, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 158
    invoke-static {v0, v1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 163
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xfa

    .line 165
    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 163
    :goto_2
    invoke-static {p1, p2, v0, v1, v2}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    const/4 p0, 0x0

    return p0
.end method

.method delete(Landroid/content/Context;)V
    .locals 1

    .line 111
    iget v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/inputmethod/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method public getCurrentUserDictionaryLocale()Ljava/lang/String;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;",
            ">;"
        }
    .end annotation

    .line 238
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 241
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    const-string v2, ""

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 250
    invoke-static {p1, v3, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 252
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    invoke-static {p1, v3, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 258
    invoke-static {p1, v3, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 260
    :cond_2
    new-instance p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method saveStateIntoBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "word"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    const-string v1, "originalWord"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortcut"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "originalShortcut"

    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    const-string v0, "locale"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method updateLocale(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    return-void
.end method
