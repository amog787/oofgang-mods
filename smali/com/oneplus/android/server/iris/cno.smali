.class abstract Lcom/oneplus/android/server/iris/cno;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final sis:Ljava/lang/String; = "OpIrisManager"

.field protected static final you:Z


# instance fields
.field protected zta:Lcom/oneplus/android/server/iris/tsu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/iris/cno;->you:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/android/server/iris/tsu;

    invoke-direct {v0}, Lcom/oneplus/android/server/iris/tsu;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/cno;->zta:Lcom/oneplus/android/server/iris/tsu;

    return-void
.end method


# virtual methods
.method public abstract bio()Ljava/lang/String;
.end method

.method public abstract bvj(Z)V
.end method

.method public abstract cjf(Z)V
.end method

.method public abstract cno(I)I
.end method

.method public abstract dma(Lcom/oneplus/iris/OpIrisWindowInfo;)V
.end method

.method public abstract ear(Z)V
.end method

.method public abstract gck(I)V
.end method

.method public abstract gwm(Z)V
.end method

.method public abstract ibl(Z)V
.end method

.method public abstract igw(Z)V
.end method

.method public abstract ire()V
.end method

.method public abstract kth()Z
.end method

.method public abstract obl(I)V
.end method

.method public abstract oif(Z)V
.end method

.method public abstract oxb(Z)V
.end method

.method public abstract qbh(Z)V
.end method

.method public abstract rtg()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public sis(I)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/cno;->zta:Lcom/oneplus/android/server/iris/tsu;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/tsu;->zta(I)I

    move-result p0

    return p0
.end method

.method public abstract ssp(I)I
.end method

.method public abstract tsu()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public ugm(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/cno;->zta:Lcom/oneplus/android/server/iris/tsu;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/tsu;->ssp(Ljava/lang/String;)V

    return-void
.end method

.method public abstract vdb(Z)V
.end method

.method public abstract wtn()V
.end method

.method public abstract you(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract ywr(I)V
.end method

.method public abstract zgw()V
.end method
