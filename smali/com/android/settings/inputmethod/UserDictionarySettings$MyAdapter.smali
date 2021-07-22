.class Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAdapter"
.end annotation


# instance fields
.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private final mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0

    .line 292
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 271
    new-instance p2, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;

    invoke-direct {p2, p0}, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;-><init>(Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;)V

    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    if-eqz p3, :cond_0

    const p2, 0x104034a

    .line 295
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "word"

    .line 297
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 298
    new-instance p4, Landroid/widget/AlphabetIndexer;

    invoke-direct {p4, p3, p2, p1}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object p4, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    invoke-virtual {p0, p1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSectionForPosition(I)I
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
