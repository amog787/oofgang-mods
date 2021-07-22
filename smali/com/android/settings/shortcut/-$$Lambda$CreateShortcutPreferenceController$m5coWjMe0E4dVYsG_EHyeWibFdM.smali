.class public final synthetic Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$m5coWjMe0E4dVYsG_EHyeWibFdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/shortcut/CreateShortcutPreferenceController;

.field public final synthetic f$1:Landroid/content/pm/ResolveInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/shortcut/CreateShortcutPreferenceController;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$m5coWjMe0E4dVYsG_EHyeWibFdM;->f$0:Lcom/android/settings/shortcut/CreateShortcutPreferenceController;

    iput-object p2, p0, Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$m5coWjMe0E4dVYsG_EHyeWibFdM;->f$1:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$m5coWjMe0E4dVYsG_EHyeWibFdM;->f$0:Lcom/android/settings/shortcut/CreateShortcutPreferenceController;

    iget-object p0, p0, Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$m5coWjMe0E4dVYsG_EHyeWibFdM;->f$1:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->lambda$updateState$0$CreateShortcutPreferenceController(Landroid/content/pm/ResolveInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
