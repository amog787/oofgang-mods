.class public final synthetic Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminAdd$juT03BgdUU2vZFkHdvB7Xj_I1dA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminAdd$juT03BgdUU2vZFkHdvB7Xj_I1dA;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminAdd$juT03BgdUU2vZFkHdvB7Xj_I1dA;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->lambda$findAdminWithPackageName$0(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
