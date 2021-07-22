.class public final synthetic Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$w7w_sPbPSDjsJT4DO8L9NvJUpS0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/preference/PreferenceGroup;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$w7w_sPbPSDjsJT4DO8L9NvJUpS0;->f$0:Landroidx/preference/PreferenceGroup;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$w7w_sPbPSDjsJT4DO8L9NvJUpS0;->f$0:Landroidx/preference/PreferenceGroup;

    check-cast p1, Landroid/content/pm/ModuleInfo;

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController;->lambda$displayPreference$1(Landroidx/preference/PreferenceGroup;Landroid/content/pm/ModuleInfo;)V

    return-void
.end method
