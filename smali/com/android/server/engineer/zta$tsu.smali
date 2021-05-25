.class Lcom/android/server/engineer/zta$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/zta;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/zta$tsu;->zta:Lcom/android/server/engineer/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
