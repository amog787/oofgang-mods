.class public final synthetic Lcom/oneplus/android/server/openid/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic you:Landroid/content/Context;

.field public final synthetic zta:Lcom/oneplus/android/server/openid/tsu;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/android/server/openid/tsu;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/sis;->zta:Lcom/oneplus/android/server/openid/tsu;

    iput-object p2, p0, Lcom/oneplus/android/server/openid/sis;->you:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/openid/sis;->zta:Lcom/oneplus/android/server/openid/tsu;

    iget-object p0, p0, Lcom/oneplus/android/server/openid/sis;->you:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/server/openid/tsu;->irq(Landroid/content/Context;)V

    return-void
.end method
