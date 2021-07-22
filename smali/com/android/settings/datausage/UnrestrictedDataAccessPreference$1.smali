.class Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;
.super Ljava/lang/Object;
.source "UnrestrictedDataAccessPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->access$100(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->access$000(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 112
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    invoke-static {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->access$000(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
