.class Lcom/android/settings/network/TetherEnabler$1;
.super Ljava/lang/Object;
.source "TetherEnabler.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/TetherEnabler;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/TetherEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/network/TetherEnabler;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/network/TetherEnabler$1;->this$0:Lcom/android/settings/network/TetherEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheredInterfacesChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler$1;->this$0:Lcom/android/settings/network/TetherEnabler;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherEnabler;->updateState([Ljava/lang/String;)V

    return-void
.end method
