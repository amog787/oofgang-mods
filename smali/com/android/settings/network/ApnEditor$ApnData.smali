.class Lcom/android/settings/network/ApnEditor$ApnData;
.super Ljava/lang/Object;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApnData"
.end annotation


# instance fields
.field mData:[Ljava/lang/Object;

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1699
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 2

    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1703
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    .line 1704
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1705
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_4

    .line 1706
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_1

    .line 1717
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 1714
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 1708
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 1711
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method getInteger(I)Ljava/lang/Integer;
    .locals 0

    .line 1734
    iget-object p0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1738
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method getString(I)Ljava/lang/String;
    .locals 0

    .line 1743
    iget-object p0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method getUri()Landroid/net/Uri;
    .locals 0

    .line 1726
    iget-object p0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method setObject(ILjava/lang/Object;)V
    .locals 0

    .line 1747
    iget-object p0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    aput-object p2, p0, p1

    return-void
.end method
