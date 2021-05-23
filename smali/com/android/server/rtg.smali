.class public final synthetic Lcom/android/server/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic sis:Ljava/lang/String;

.field public final synthetic you:I

.field public final synthetic zta:Lcom/android/server/oxb;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/oxb;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rtg;->zta:Lcom/android/server/oxb;

    iput p2, p0, Lcom/android/server/rtg;->you:I

    iput-object p3, p0, Lcom/android/server/rtg;->sis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rtg;->zta:Lcom/android/server/oxb;

    iget v1, p0, Lcom/android/server/rtg;->you:I

    iget-object p0, p0, Lcom/android/server/rtg;->sis:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/oxb;->m(ILjava/lang/String;)V

    return-void
.end method
