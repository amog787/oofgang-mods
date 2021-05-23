.class public final synthetic Lcom/android/server/igw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic you:Landroid/content/Intent;

.field public final synthetic zta:Lcom/android/server/fto;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fto;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/igw;->zta:Lcom/android/server/fto;

    iput-object p2, p0, Lcom/android/server/igw;->you:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/igw;->zta:Lcom/android/server/fto;

    iget-object p0, p0, Lcom/android/server/igw;->you:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/android/server/fto;->zgw(Landroid/content/Intent;)V

    return-void
.end method
