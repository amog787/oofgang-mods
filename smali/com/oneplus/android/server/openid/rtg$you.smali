.class Lcom/oneplus/android/server/openid/rtg$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/openid/rtg;->fto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/openid/rtg;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/openid/rtg;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/rtg$you;->zta:Lcom/oneplus/android/server/openid/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$you;->zta:Lcom/oneplus/android/server/openid/rtg;

    invoke-static {p0}, Lcom/oneplus/android/server/openid/rtg;->rtg(Lcom/oneplus/android/server/openid/rtg;)Ljava/lang/String;

    return-void
.end method
