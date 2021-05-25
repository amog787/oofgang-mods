.class Lcom/oneplus/android/server/iris/tsu$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lsis/you/zta/zta/zta/sis$tsu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic sis:Lcom/oneplus/android/server/iris/tsu;

.field private you:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zta:I


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/iris/tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/tsu$you;->sis:Lcom/oneplus/android/server/iris/tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/android/server/iris/tsu$you;->zta:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/iris/tsu;Lcom/oneplus/android/server/iris/tsu$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/tsu$you;-><init>(Lcom/oneplus/android/server/iris/tsu;)V

    return-void
.end method


# virtual methods
.method public sis()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/tsu$you;->you:Ljava/util/ArrayList;

    return-object p0
.end method

.method public you()I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/iris/tsu$you;->zta:I

    return p0
.end method

.method public zta(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/oneplus/android/server/iris/tsu$you;->zta:I

    iput-object p2, p0, Lcom/oneplus/android/server/iris/tsu$you;->you:Ljava/util/ArrayList;

    return-void
.end method
