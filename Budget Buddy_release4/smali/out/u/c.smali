.class public final synthetic Lu/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lu/h;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lu/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/c;->e:Ljava/lang/String;

    iput-object p2, p0, Lu/c;->f:Lu/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lu/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lu/c;->f:Lu/h;

    invoke-static {v0, v1}, Lu/d;->b(Ljava/lang/String;Lu/h;)V

    return-void
.end method
