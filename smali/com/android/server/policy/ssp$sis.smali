.class Lcom/android/server/policy/ssp$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/graphics/Point;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/ssp;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ssp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/ssp$sis;->zta:Lcom/android/server/policy/ssp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/ssp$sis;->zta(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public zta(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 0

    iget p0, p1, Landroid/graphics/Point;->y:I

    iget p1, p2, Landroid/graphics/Point;->y:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
