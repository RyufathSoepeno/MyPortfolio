.class Le0/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Le0/a$b;


# direct methods
.method private constructor <init>(Le0/a$b;)V
    .registers 2

    iput-object p1, p0, Le0/a$b$a;->b:Le0/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Le0/a$b$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Le0/a$b;Le0/a$a;)V
    .registers 3

    invoke-direct {p0, p1}, Le0/a$b$a;-><init>(Le0/a$b;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flutter-worker-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le0/a$b$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le0/a$b$a;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
