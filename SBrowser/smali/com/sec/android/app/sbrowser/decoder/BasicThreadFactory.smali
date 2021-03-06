.class public Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;
.super Ljava/lang/Object;
.source "BasicThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$1;,
        Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;
    }
.end annotation


# instance fields
.field private final daemonFlag:Ljava/lang/Boolean;

.field private final namingPattern:Ljava/lang/String;

.field private final priority:Ljava/lang/Integer;

.field private final threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->access$000(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    :goto_0
    #getter for: Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->access$100(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->namingPattern:Ljava/lang/String;

    #getter for: Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->access$200(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->priority:Ljava/lang/Integer;

    #getter for: Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->access$300(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->daemonFlag:Ljava/lang/Boolean;

    #getter for: Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->access$400(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    :cond_0
    #getter for: Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->access$000(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;-><init>(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)V

    return-void
.end method

.method private initializeThread(Ljava/lang/Thread;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->getNamingPattern()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->getNamingPattern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->getPriority()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->getPriority()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->getDaemonFlag()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->getDaemonFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final getDaemonFlag()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->daemonFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getNamingPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->namingPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->priority:Ljava/lang/Integer;

    return-object v0
.end method

.method public getThreadCount()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public final getWrappedFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->getWrappedFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;->initializeThread(Ljava/lang/Thread;)V

    return-object v0
.end method
