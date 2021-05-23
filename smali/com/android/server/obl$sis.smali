.class Lcom/android/server/obl$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/obl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/obl;


# direct methods
.method constructor <init>(Lcom/android/server/obl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/obl$sis;->zta:Lcom/android/server/obl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/obl$sis;->zta:Lcom/android/server/obl;

    invoke-static {p0, p1}, Lcom/android/server/obl;->zta(Lcom/android/server/obl;Lorg/json/JSONArray;)V

    return-void
.end method
