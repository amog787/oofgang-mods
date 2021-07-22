.class public final synthetic Lcom/android/settings/dream/-$$Lambda$CurrentDreamPicker$t4o3LQXIuoDz_RsLdUZZYlwB3bA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPicker$t4o3LQXIuoDz_RsLdUZZYlwB3bA;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPicker$t4o3LQXIuoDz_RsLdUZZYlwB3bA;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-static {p0, p1}, Lcom/android/settings/dream/CurrentDreamPicker;->lambda$getDreamComponentsMap$0(Ljava/util/Map;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    return-void
.end method
