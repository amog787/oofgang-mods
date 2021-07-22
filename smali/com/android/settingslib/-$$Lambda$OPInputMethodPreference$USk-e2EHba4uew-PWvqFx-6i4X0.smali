.class public final synthetic Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$USk-e2EHba4uew-PWvqFx-6i4X0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/OPInputMethodPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/OPInputMethodPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$USk-e2EHba4uew-PWvqFx-6i4X0;->f$0:Lcom/android/settingslib/OPInputMethodPreference;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$USk-e2EHba4uew-PWvqFx-6i4X0;->f$0:Lcom/android/settingslib/OPInputMethodPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->lambda$showSecurityWarnDialog$2$OPInputMethodPreference(Landroid/content/DialogInterface;)V

    return-void
.end method
