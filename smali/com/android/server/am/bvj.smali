.class Lcom/android/server/am/bvj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final zta:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/bvj;->zta:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected zta()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/android/server/am/oif;->zta:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/server/am/bvj;->zta:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
