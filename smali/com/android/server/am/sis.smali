.class public final synthetic Lcom/android/server/am/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic you:Lorg/json/JSONArray;

.field public final synthetic zta:Lcom/android/server/am/hmo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/hmo;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/sis;->zta:Lcom/android/server/am/hmo;

    iput-object p2, p0, Lcom/android/server/am/sis;->you:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/sis;->zta:Lcom/android/server/am/hmo;

    iget-object p0, p0, Lcom/android/server/am/sis;->you:Lorg/json/JSONArray;

    invoke-virtual {v0, p0}, Lcom/android/server/am/hmo;->f(Lorg/json/JSONArray;)V

    return-void
.end method
