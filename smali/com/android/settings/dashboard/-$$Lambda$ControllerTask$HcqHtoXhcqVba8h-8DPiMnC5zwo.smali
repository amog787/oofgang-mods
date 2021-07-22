.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$ControllerTask$HcqHtoXhcqVba8h-8DPiMnC5zwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/ControllerTask;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/ControllerTask;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$ControllerTask$HcqHtoXhcqVba8h-8DPiMnC5zwo;->f$0:Lcom/android/settings/dashboard/ControllerTask;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$ControllerTask$HcqHtoXhcqVba8h-8DPiMnC5zwo;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$ControllerTask$HcqHtoXhcqVba8h-8DPiMnC5zwo;->f$0:Lcom/android/settings/dashboard/ControllerTask;

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$ControllerTask$HcqHtoXhcqVba8h-8DPiMnC5zwo;->f$1:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/ControllerTask;->lambda$run$0$ControllerTask(Landroidx/preference/Preference;)V

    return-void
.end method
