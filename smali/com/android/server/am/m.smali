.class public Lcom/android/server/am/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sis:Lcom/android/server/am/m;


# instance fields
.field private you:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/m;->zta:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/m;->you:Ljava/util/List;

    return-void
.end method

.method public static you(Landroid/content/Context;)Lcom/android/server/am/m;
    .locals 1

    sget-object v0, Lcom/android/server/am/m;->sis:Lcom/android/server/am/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/m;

    invoke-direct {v0, p0}, Lcom/android/server/am/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/m;->sis:Lcom/android/server/am/m;

    :cond_0
    sget-object p0, Lcom/android/server/am/m;->sis:Lcom/android/server/am/m;

    return-object p0
.end method


# virtual methods
.method protected rtg(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/m;->you:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected sis(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7f6

    if-ne p0, v0, :cond_1

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p0, p0, 0x18

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x5

    if-le p0, v0, :cond_0

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gt p0, v0, :cond_1

    :cond_0
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez p0, :cond_1

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected tsu(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/m;->you:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/m;->zta:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/m;->you:Ljava/util/List;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected zta(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/m;->you:Ljava/util/List;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
