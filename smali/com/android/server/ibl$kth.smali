.class Lcom/android/server/ibl$kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "kth"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/ibl;


# direct methods
.method private constructor <init>(Lcom/android/server/ibl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ibl$kth;->zta:Lcom/android/server/ibl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ibl;Lcom/android/server/ibl$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ibl$kth;-><init>(Lcom/android/server/ibl;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/ibl$kth;->zta:Lcom/android/server/ibl;

    invoke-static {p0, p1}, Lcom/android/server/ibl;->kth(Lcom/android/server/ibl;Lorg/json/JSONArray;)V

    return-void
.end method
