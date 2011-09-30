.class public Lcom/android/launcher2/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# instance fields
.field private mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/Launcher;I)V
    .locals 0
    .parameter "context"
    .parameter "launcher"
    .parameter "hostId"

    .prologue
    .line 33
    invoke-direct {p0, p1, p3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p2, p0, Lcom/android/launcher2/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 40
    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, p1, v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher2/Launcher;)V

    return-object v0
.end method
