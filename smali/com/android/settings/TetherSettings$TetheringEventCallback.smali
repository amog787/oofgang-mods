.class final Lcom/android/settings/TetherSettings$TetheringEventCallback;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TetheringEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetheringEventCallback;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V
    .locals 0

    .line 825
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetheringEventCallback;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onTetheredInterfacesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 828
    iget-object p0, p0, Lcom/android/settings/TetherSettings$TetheringEventCallback;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$200(Lcom/android/settings/TetherSettings;)V

    return-void
.end method
