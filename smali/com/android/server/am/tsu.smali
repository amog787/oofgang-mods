.class public final synthetic Lcom/android/server/am/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic you:Ljava/lang/String;

.field public final synthetic zta:Lcom/android/server/am/h;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/tsu;->zta:Lcom/android/server/am/h;

    iput-object p2, p0, Lcom/android/server/am/tsu;->you:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/tsu;->zta:Lcom/android/server/am/h;

    iget-object p0, p0, Lcom/android/server/am/tsu;->you:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/am/h;->ssp(Ljava/lang/String;)V

    return-void
.end method
