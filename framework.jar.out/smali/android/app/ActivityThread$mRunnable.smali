.class Landroid/app/ActivityThread$mRunnable;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mRunnable"
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field pname:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$mRunnable;->this$0:Landroid/app/ActivityThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/ActivityThread$mRunnable;->c:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/ActivityThread$mRunnable;->pname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$mRunnable;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$mRunnable;->c:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/ActivityThread$mRunnable;->pname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->startRC(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
